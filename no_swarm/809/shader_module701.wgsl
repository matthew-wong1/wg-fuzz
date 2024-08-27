struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<f32, 1> = array<f32, 1>(149f);

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_f_op_f32(abs(-1045f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.zy + vec2<f32>(_wgslsmith_f_op_f32(floor(-922f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    global2 = global0.yy;
    var var_2 = 1u;
    var var_3 = Struct_5(true, Struct_2(firstTrailingBit(~(~vec2<u32>(0u, u_input.a))), Struct_1(firstLeadingBit(vec3<i32>(u_input.b, -1i, u_input.b) & vec3<i32>(-1501i, u_input.b, 0i)), vec2<f32>(1532f, global1[_wgslsmith_index_u32(select(141877u, u_input.a, global0.x), 1u)]), vec4<bool>(true, !global0.x, true, true), u_input.a), -167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f + var_0.x) + -314f)), global0.yx);
    return Struct_3(~30814i, global0.yx);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> vec3<i32> {
    var var_0 = Struct_4(Struct_3(55811i ^ _wgslsmith_div_i32(-arg_1, -2147483647i), vec2<bool>(arg_0.x, arg_2)));
    var_0 = Struct_4(var_0.a);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1000f) - 1343f)));
    var var_2 = Struct_4(Struct_3(~(-var_0.a.a), !var_0.a.b));
    var var_3 = Struct_4(func_1());
    return vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, -33330i), vec3<i32>(var_3.a.a, -6495i, 2147483647i)), func_1().a, var_0.a.a), vec3<i32>(u_input.b >> (0u % 32u), 96751i, _wgslsmith_clamp_i32(arg_1, arg_1, -32373i))), 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.a, var_3.a.a) | vec2<i32>(26727i, 1i), -vec2<i32>(arg_1, -75527i)), -var_2.a.a)) >> (vec3<u32>(firstTrailingBit(~u_input.a), abs(u_input.a), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a)), ~(~vec3<u32>(7293u, 19134u, u_input.a)))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = Struct_2(~vec2<u32>(0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.a.x, 35809u), arg_2.b.a), 29696u), Struct_1(reverseBits(func_3(arg_2.c, i32(-1i) * -13223i, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.b.b.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, max(u_input.a, 4294967295u)), 1u)]), !arg_2.b.b.c, abs(_wgslsmith_div_u32(arg_2.b.a.x, arg_2.b.b.d) >> (~55214u % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.b.b.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(78016u >> (arg_2.b.b.d % 32u), reverseBits(u_input.a)), 1u)] * _wgslsmith_f_op_f32(-385f + arg_1)))), -1120f);
    let var_1 = arg_2.b.b.a;
    let var_2 = arg_2;
    global1 = array<f32, 1>();
    var var_3 = arg_2.b.b.b;
    return Struct_1(min(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-1i, var_2.b.b.a.x, u_input.b), arg_2.b.b.a, var_0.b.c.zzw) | var_2.b.b.a, vec3<i32>(0i, ~(-1i), var_0.b.a.x)), -vec3<i32>(-3669i, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(var_2.b.b.a.x, 2147483647i, -17900i)), ~var_0.b.a.x)), arg_2.b.b.b, vec4<bool>(all(var_0.b.c), var_2.c.x, any(func_1().b), global2.x), arg_2.b.a.x ^ var_2.b.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: u32) -> i32 {
    var var_0 = false;
    var var_1 = min(u_input.a & ~(~_wgslsmith_dot_vec2_u32(arg_1.b.a, vec2<u32>(175u, 4294967295u))), arg_2);
    global0 = !select(vec4<bool>(_wgslsmith_f_op_f32(round(1016f)) <= -1000f, func_1().b.x, func_2(false, _wgslsmith_f_op_f32(-1000f * -959f), arg_1).c.x, any(vec4<bool>(false, false, arg_1.b.b.c.x, true))), arg_1.b.b.c, arg_1.b.b.c);
    var var_2 = min(_wgslsmith_mult_vec4_i32(vec4<i32>(-arg_1.b.b.a.x, firstTrailingBit(arg_1.b.b.a.x), -(i32(-1i) * -1i), arg_0.a.x), _wgslsmith_div_vec4_i32(~(vec4<i32>(arg_1.b.b.a.x, arg_1.b.b.a.x, 29175i, 6293i) << (vec4<u32>(8255u, arg_2, 81808u, 12126u) % vec4<u32>(32u))), ~(-vec4<i32>(arg_0.a.x, 2147483647i, u_input.b, 29365i)))), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_1.b.b.a.x, -7975i, 2147483647i, arg_0.a.x), firstLeadingBit(vec4<i32>(arg_1.b.b.a.x, 8355i, -21266i, -27044i))));
    global0 = !vec4<bool>(arg_0.c.x, false, true, any(!vec3<bool>(global0.x, arg_1.a, true)));
    return max(var_2.x << (~29309u % 32u), arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(2147483647i, vec2<bool>(!(!global2.x), false & (_wgslsmith_add_u32(u_input.a, 77174u) > 3337u)));
    let var_1 = 44661i;
    var var_2 = vec3<u32>(116478u, 47514u, ~105394u) << (abs(~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(14623u, 4294967295u, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)))) % vec3<u32>(32u));
    var var_3 = var_1;
    let var_4 = func_1();
    var var_5 = ~firstTrailingBit(func_4(func_2(var_0.b.x, _wgslsmith_f_op_f32(-467f - global1[_wgslsmith_index_u32(var_2.x, 1u)]), Struct_5(false, Struct_2(var_2.zx, Struct_1(vec3<i32>(var_4.a, 30526i, 22210i), vec2<f32>(-892f, -701f), vec4<bool>(var_0.b.x, false, true, var_0.b.x), u_input.a), 559f, -2107f), vec2<bool>(global0.x, true))), Struct_5(false, Struct_2(var_2.xz, Struct_1(vec3<i32>(var_0.a, -42332i, -21219i), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<bool>(global2.x, false, true, false), var_2.x), global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(var_2.x, 1u)]), vec2<bool>(true, global0.x)), min(~u_input.a, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_4.a, var_0.a, var_1, -2147483647i) | -vec4<i32>(var_4.a, var_4.a, var_4.a, var_4.a)), reverseBits(vec4<i32>(-84457i, var_1, _wgslsmith_div_i32(2147483647i, 66452i), 74087i)), ~(-(~vec4<i32>(-38478i, 0i, -1i, 13429i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-282f)), global1[_wgslsmith_index_u32(~u_input.a, 1u)]))))), (~vec4<u32>(9943u, var_2.x, 4294967295u, var_2.x) << (~(~vec4<u32>(4294967295u, var_2.x, u_input.a, 0u)) % vec4<u32>(32u))) & vec4<u32>(30539u, _wgslsmith_mod_u32(35920u, u_input.a), 4294967295u, abs(1u)));
}

