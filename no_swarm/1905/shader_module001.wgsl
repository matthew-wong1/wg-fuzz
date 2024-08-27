struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<vec2<u32>, 20>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_5 {
    return Struct_5(u_input.b);
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_add_vec2_i32(~max(firstTrailingBit(vec2<i32>(2147483647i, u_input.b)), _wgslsmith_mod_vec2_i32(arg_1.yz, vec2<i32>(8897i, u_input.a))), max(-vec2<i32>(1i, -u_input.a), vec2<i32>(~(arg_1.x >> (51226u % 32u)), _wgslsmith_dot_vec3_i32(select(arg_1, vec3<i32>(arg_1.x, arg_0.a, u_input.a), vec3<bool>(true, false, arg_2.a)), vec3<i32>(1i, 1i, 1i)))));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-821f)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1439f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-151f * -593f) - -931f)), global2.a, any(select(select(vec3<bool>(arg_2.a, global2.a, arg_2.a), !vec3<bool>(true, false, global3.a), arg_2.a), vec3<bool>(any(vec3<bool>(false, arg_2.a, false)), true, !global2.a), !select(vec3<bool>(global3.a, arg_2.a, true), vec3<bool>(true, false, arg_2.a), false))));
    var var_2 = 1561f;
    var var_3 = -firstLeadingBit(~vec2<i32>(-2147483647i ^ arg_0.a, _wgslsmith_div_i32(arg_1.x, var_0.x)));
    global3 = Struct_1(true);
    return !var_1.x;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    return Struct_1(true);
}

fn func_1() -> Struct_2 {
    global3 = func_4(Struct_5(u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(935f, 743f, -276f), _wgslsmith_div_vec3_f32(vec3<f32>(644f, -682f, -591f), vec3<f32>(558f, -552f, -421f))))), vec2<bool>(func_3(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), global4[_wgslsmith_index_u32(72554u, 20u)]), vec2<i32>(-1i, -2147483647i), -vec4<i32>(2147483647i, 4164i, 10726i, u_input.a), select(vec3<bool>(true, false, true), vec3<bool>(global2.a, global2.a, true), global2.a)), max(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.b)), max(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(u_input.c, 2147483647i, -55728i))), Struct_1(true)), false), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -6547i, -16793i, u_input.c), -vec4<i32>(0i, u_input.a, 41125i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(31321i, u_input.b, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 3830i, u_input.c))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(45027i, -50662i, u_input.a, -32000i) & vec4<i32>(u_input.a, -40859i, u_input.c, 44717i), vec4<i32>(6814i, u_input.a, u_input.c, u_input.a)), -vec4<i32>(24280i, min(1i, -37511i), func_2(vec2<u32>(1u, 1u), vec2<i32>(-1i, 27374i), vec4<i32>(1i, u_input.b, 5935i, u_input.a), vec3<bool>(global2.a, true, global3.a)).a, u_input.c), max(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.c, 24501i, -1i), vec4<i32>(u_input.b, -1i, u_input.b, 43250i)), -(vec4<i32>(u_input.b, u_input.c, u_input.b, 0i) | vec4<i32>(u_input.c, u_input.c, 0i, u_input.b)))));
    var var_0 = func_4(Struct_5(-1i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1282f, 144f, 1972f) + vec3<f32>(-190f, 172f, 1026f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1193f, -1000f, 1804f) * vec3<f32>(-154f, -1487f, 1008f)))) + vec3<f32>(-2516f, _wgslsmith_f_op_f32(f32(-1f) * -657f), -1306f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(212f)), _wgslsmith_f_op_f32(f32(-1f) * -1217f), 854f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-345f, 285f, -758f))), vec3<f32>(-359f, 1150f, 1442f))))), vec2<bool>(-169f != _wgslsmith_f_op_f32(step(-266f, _wgslsmith_f_op_f32(f32(-1f) * -667f))), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, global2.a, global3.a), false))), vec4<i32>(11520i, u_input.c, firstLeadingBit(~_wgslsmith_add_i32(2147483647i, -2147483647i)), ~_wgslsmith_div_i32(u_input.b, countOneBits(u_input.c))));
    global2 = func_4(Struct_5(_wgslsmith_mult_i32(max(_wgslsmith_mod_i32(67772i, -25214i), -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, 1i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), firstLeadingBit(u_input.a), firstTrailingBit(u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -2641f, 1000f), vec3<f32>(-1056f, 1000f, 610f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2071f, 455f, -2131f) - vec3<f32>(-957f, 208f, 1204f)))))), !(!vec2<bool>(false, global2.a)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(select(u_input.b, 64877i, global3.a), 1i, _wgslsmith_div_i32(1i, u_input.b), ~u_input.b), min(vec4<i32>(-2147483647i, u_input.b, u_input.c, u_input.b), vec4<i32>(-2147483647i, -47100i, 44787i, u_input.a))), countOneBits(firstTrailingBit(vec4<i32>(u_input.c, -7323i, 1i, u_input.c)))));
    var var_1 = Struct_3(~(-vec4<i32>(u_input.b, 13144i, u_input.b, -38811i)) << (~vec4<u32>(~4294967295u, ~35132u, 1u, ~1u) % vec4<u32>(32u)), -(~countOneBits(vec3<i32>(u_input.b, u_input.c, 28676i))) << (~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(28329u, 0u, 1u), vec3<u32>(0u, 22088u, 1u)), ~22399u, min(9841u, 4294967295u)) % vec3<u32>(32u)), min(_wgslsmith_div_vec2_i32(select(firstLeadingBit(vec2<i32>(0i, 14748i)), select(vec2<i32>(u_input.c, u_input.a), vec2<i32>(7844i, u_input.a), vec2<bool>(false, false)), var_0.a), vec2<i32>(u_input.a, -1i)), vec2<i32>(~u_input.b, firstTrailingBit(~u_input.c))));
    return Struct_2(vec4<bool>(true, var_0.a, global2.a, !(-61111i != ~u_input.a)), 25014u >= ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 15826u, 0u), vec3<u32>(12304u, 463u, 11190u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = 0i;
    var var_1 = func_1();
    let var_2 = var_1.b;
    var_1 = Struct_2(!(!var_1.a), global2.a);
    let var_3 = Struct_4(func_4(Struct_5(abs(u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-248f, -197f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1943f, 856f)) * _wgslsmith_f_op_f32(f32(-1f) * -1563f))), vec2<bool>(func_4(Struct_5(1i), _wgslsmith_div_vec3_f32(vec3<f32>(295f, 277f, -1251f), vec3<f32>(-310f, 1197f, 227f)), func_1().a.wy, -vec4<i32>(-1i, u_input.a, u_input.b, u_input.b)).a, func_3(Struct_5(u_input.c), vec3<i32>(u_input.a, 34018i, 89238i), Struct_1(global2.a)) == true), vec4<i32>(-2147483647i, u_input.b, -(~u_input.b), -2147483647i)).a);
    let var_4 = !var_1.a;
    global2 = func_4(func_2(select(firstTrailingBit(select(vec2<u32>(0u, 1u), global4[_wgslsmith_index_u32(1u, 20u)], vec2<bool>(var_4.x, global3.a))), global4[_wgslsmith_index_u32(abs(1u), 20u)], var_1.a.xx), -(vec2<i32>(-20822i, u_input.b) << (_wgslsmith_div_vec2_u32(global4[_wgslsmith_index_u32(4294967295u, 20u)], vec2<u32>(42515u, 15980u)) % vec2<u32>(32u))), ~firstTrailingBit(~vec4<i32>(4386i, 0i, u_input.a, 2147483647i)), var_4.zzz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1497f, -3066f, -635f) - vec3<f32>(439f, 1032f, 1523f))))), vec2<bool>(true, true), (vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, 1i, 36770i, 2147483647i))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(~37546i, u_input.b, ~(-1i), 40568i), vec4<i32>(u_input.b, u_input.b, countOneBits(u_input.a), ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.a ^ 0i, u_input.b), ~firstTrailingBit(vec3<i32>(u_input.b, 13383i, 1i))), firstTrailingBit(-vec3<i32>(-26225i, 0i, u_input.c) | -vec3<i32>(u_input.a, 64645i, u_input.c))), -vec3<i32>(u_input.c, select(u_input.b, u_input.c, true), countOneBits(-4127i)) << (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(48509u, 0u), abs(35174u)), _wgslsmith_clamp_u32(0u, 1u, 1u), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(7356u, 23257u))) % vec3<u32>(32u)), (vec4<i32>(1i, 0i, -2147483647i, -u_input.a) & ~(-vec4<i32>(u_input.c, 10259i, u_input.c, -28829i))) ^ (firstLeadingBit(vec4<i32>(u_input.a, u_input.b, 0i, u_input.c) | vec4<i32>(-1i, -1414i, 1i, u_input.a)) | vec4<i32>(1i, 1i, 1i, 1i)), u_input.a, min(abs(vec4<i32>(-u_input.b, u_input.c, ~(-2147483647i), -33617i)), vec4<i32>(1i, -25954i, max(firstTrailingBit(-11205i), -u_input.a), 23581i)));
}

