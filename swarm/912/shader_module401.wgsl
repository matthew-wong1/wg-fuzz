struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_3,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(12946i, vec3<bool>(true, true, true), 15497u, false, Struct_1(vec2<u32>(31089u, 41875u)));

var<private> global1: bool = true;

var<private> global2: vec3<u32> = vec3<u32>(0u, 46580u, 4294967295u);

var<private> global3: array<vec4<bool>, 8>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_0.d.a >> (24463u % 32u);
    let var_1 = Struct_5(Struct_1(~(~(~arg_0.e.yw))));
    let var_2 = Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.a, vec3<i32>(arg_0.b.b, -12479i, global0.a) & u_input.a, abs(vec3<i32>(2147483647i, global0.a, -26645i))), ~vec3<i32>(global0.a, -47381i, arg_1)), u_input.a), Struct_3(global2.x, _wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(global0.a, global0.a)), u_input.a.x, 1i)), select(!arg_0.c, select(select(arg_2.yyx, global0.b, true), global0.b, false), false), arg_0.b, ~firstLeadingBit(arg_0.e));
    global0 = Struct_2(20194i, !(!vec3<bool>(global0.b.x, arg_0.c.x, true)), var_2.b.a, true, Struct_1(~global2.zy));
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(60514i), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.b, var_2.a, arg_1), u_input.a)), ~0i, arg_0.d.b), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 25776i), vec4<i32>(-1i) * -vec4<i32>(23854i, 1i, var_2.d.b, -24086i)), (_wgslsmith_mod_vec4_i32(vec4<i32>(-15938i, 41854i, global0.a, -48057i), vec4<i32>(arg_1, var_2.b.b, arg_0.b.b, 40089i)) ^ vec4<i32>(u_input.a.x, arg_0.b.b, u_input.a.x, 1i)) | reverseBits(select(vec4<i32>(global0.a, 1i, -47657i, 44245i), vec4<i32>(-1i, 0i, 26298i, arg_0.d.b), arg_0.c.x))));
    return _wgslsmith_add_u32(var_2.d.a, 1u << (countOneBits(_wgslsmith_div_u32(global0.e.a.x ^ 30386u, _wgslsmith_clamp_u32(global2.x, 1u, 0u))) % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> vec3<u32> {
    var var_0 = u_input.a;
    global2 = vec3<u32>(global0.e.a.x, _wgslsmith_div_u32(arg_3, 79060u), ~global0.e.a.x) & ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u) & vec3<u32>(4294967295u, 43117u, global2.x), vec3<u32>(global0.e.a.x, global0.c, global0.c), ~vec3<u32>(4294967295u, 33927u, arg_3)));
    global1 = global0.d;
    var_0 = -select(u_input.a, _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(var_0.x, var_0.x, 20897i)), true) >> (vec3<u32>(select(global0.c, arg_3, global0.b.x) << (min(~arg_3, func_3(Struct_4(var_0.x, Struct_3(122027u, global0.a), global0.b, Struct_3(4294967295u, var_0.x), vec4<u32>(arg_3, 45773u, 81079u, arg_3)), var_0.x, vec4<bool>(arg_0.x, false, false, true))) % 32u), ~arg_3, countOneBits(31486u)) % vec3<u32>(32u));
    let var_1 = any(!select(select(vec3<bool>(arg_0.x, true, global0.b.x), vec3<bool>(true, arg_0.x, global0.b.x), arg_2.x <= arg_1), global0.b, !vec3<bool>(global0.b.x, false, global0.d)));
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4279u, global2.x, arg_3), vec3<u32>(1u, 1u, 1u)), arg_3 ^ global2.x), max(vec3<u32>(49277u, 4294967295u, global2.x) & vec3<u32>(1u, 19540u, 1u), vec3<u32>(global2.x, global0.e.a.x, global0.c))), vec3<u32>(1u, 107559u, abs(_wgslsmith_mult_u32(26853u, 1u))), vec3<u32>(4294967295u, global2.x, 19137u)), _wgslsmith_add_vec3_u32(~min(max(vec3<u32>(0u, global0.c, arg_3), vec3<u32>(arg_3, 0u, global0.e.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(26344u, arg_3, global2.x), vec3<u32>(arg_3, global0.e.a.x, arg_3))), abs(~firstLeadingBit(vec3<u32>(global0.c, global0.e.a.x, 20276u)))), reverseBits(~firstLeadingBit(firstTrailingBit(vec3<u32>(32763u, arg_3, global0.e.a.x)))));
}

fn func_1() -> Struct_4 {
    global2 = ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global2.x, global0.e.a.x) | ~vec3<u32>(global0.c, global2.x, 0u), _wgslsmith_add_vec3_u32(func_2(global0.b.xz, 1383f, vec4<f32>(-1459f, 422f, 734f, -965f), global0.c), vec3<u32>(global2.x, 7410u, global0.e.a.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.e.a.x, 0u, global0.e.a.x), vec3<u32>(global0.c, global2.x, 37234u), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.c, global2.x, 8543u), vec3<u32>(global2.x, global0.e.a.x, global2.x)))) >> ((~_wgslsmith_mult_vec3_u32(vec3<u32>(2519u, global0.c, global0.e.a.x), vec3<u32>(1u, 78791u, 0u)) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(73469u, 1u, global0.e.a.x), vec3<u32>(global0.c, 44042u, 25568u)), ~vec3<u32>(4294967295u, 1u, global0.c))) % vec3<u32>(32u)));
    var var_0 = ~29661u <= global2.x;
    var var_1 = Struct_3(reverseBits(func_2(global0.b.xz, -620f, vec4<f32>(_wgslsmith_div_f32(226f, -1626f), _wgslsmith_f_op_f32(f32(-1f) * -1959f), -1481f, -1783f), _wgslsmith_sub_u32(56626u, func_3(Struct_4(2147483647i, Struct_3(global2.x, global0.a), global0.b, Struct_3(global2.x, u_input.a.x), vec4<u32>(global0.e.a.x, 29350u, global0.c, global0.c)), 43947i, vec4<bool>(true, false, true, global0.b.x)))).x), global0.a);
    var var_2 = Struct_2(-1i, vec3<bool>(false, global0.d, 7072u > global0.c), ~(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, global2.x), 33881u, global2.x) & global0.e.a.x), false, Struct_1(~global2.xx));
    global0 = Struct_2(-u_input.a.x, vec3<bool>(!any(select(vec4<bool>(var_2.d, true, var_2.d, true), global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(var_1.a, 8u)])), !var_2.b.x, false), ~0u, !(!var_2.b.x), Struct_1(~vec2<u32>(65448u, ~var_1.a)));
    return Struct_4(select(_wgslsmith_add_i32(global0.a, ~(23372i | global0.a)), _wgslsmith_div_i32(u_input.a.x, -_wgslsmith_div_i32(var_1.b, 4866i)), all(select(vec3<bool>(global0.d, global0.d, var_2.d), select(global0.b, vec3<bool>(true, var_2.b.x, var_2.d), global0.d), any(vec2<bool>(global0.d, false))))), Struct_3(65866u, -25767i), !global0.b, Struct_3(func_2(var_2.b.zx, _wgslsmith_div_f32(-731f, _wgslsmith_f_op_f32(trunc(-445f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1628f, 195f, 1000f, 816f) - vec4<f32>(398f, -690f, -1924f, 1000f)), firstLeadingBit(var_2.c)).x, var_2.a), reverseBits(max(firstLeadingBit(~vec4<u32>(1u, 1u, var_1.a, var_2.c)), vec4<u32>(_wgslsmith_div_u32(var_2.e.a.x, 1u), ~global0.c, _wgslsmith_sub_u32(1u, global0.c), ~var_1.a))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f + 1351f)) * 337f))));
    global2 = arg_1.e.yxx;
    global3 = array<vec4<bool>, 8>();
    global1 = global0.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-682f)), 609f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 8>();
    let var_0 = ~global0.c;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~(~u_input.a.x >> (1u % 32u)), ~(-_wgslsmith_clamp_i32(0i, u_input.a.x, 0i))), _wgslsmith_div_vec2_i32(u_input.a.zx, select((u_input.a.xy ^ vec2<i32>(1i, global0.a)) & -u_input.a.yz, vec2<i32>(-1i, global0.a) >> (vec2<u32>(0u, global0.c) % vec2<u32>(32u)), select(!vec2<bool>(global0.d, global0.d), !vec2<bool>(global0.d, false), vec2<bool>(false, global0.b.x)))));
    let var_2 = select(u_input.a, vec3<i32>(-2147483647i, countOneBits(var_1.x), _wgslsmith_mod_i32(global0.a, 0i)), global0.b);
    global1 = global0.d;
    global1 = any(vec2<bool>(true, var_0 >= _wgslsmith_dot_vec2_u32(global2.xz, ~vec2<u32>(2474u, 36487u))));
    let var_3 = vec4<i32>(u_input.a.x, global0.a, 0i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(global0.a, global0.a, var_3.x, var_1.x) & vec4<i32>(-2147483647i, 43668i, 1i, -32796i), func_1(), countOneBits(vec2<i32>(-11455i, var_2.x)), 19090u))))), var_1.x, _wgslsmith_dot_vec4_i32(countOneBits(var_3), var_3), var_0, -26304i);
}

