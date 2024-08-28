struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), false, vec4<i32>(1i, -30585i, -38138i, 1i), 2147483647i, vec2<f32>(407f, 2333f));

var<private> global2: array<f32, 2> = array<f32, 2>(-677f, 707f);

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(4294967295u, Struct_1(vec3<i32>(-42618i, -47200i, 2147483647i), false, vec4<i32>(-9557i, -17009i, 4516i, 0i), 9561i, vec2<f32>(-263f, -1720f)), Struct_1(vec3<i32>(8081i, -1i, -25746i), false, vec4<i32>(-23745i, 1i, 2814i, -62645i), 4930i, vec2<f32>(2054f, 394f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), false, vec4<i32>(0i, -57916i, -18382i, 10096i), i32(-2147483648), vec2<f32>(585f, 296f))), Struct_2(4294967295u, Struct_1(vec3<i32>(-29096i, -1i, i32(-2147483648)), false, vec4<i32>(i32(-2147483648), 2305i, -1i, 14089i), 19475i, vec2<f32>(-331f, -406f)), Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), false, vec4<i32>(2147483647i, 1i, i32(-2147483648), -25007i), 2147483647i, vec2<f32>(172f, -715f)), Struct_1(vec3<i32>(i32(-2147483648), 10904i, 42422i), true, vec4<i32>(i32(-2147483648), 2147483647i, 4023i, 0i), 0i, vec2<f32>(-404f, -1000f))), Struct_2(1u, Struct_1(vec3<i32>(0i, 2147483647i, -1i), true, vec4<i32>(6684i, -70755i, 17314i, 1i), -19092i, vec2<f32>(778f, 1029f)), Struct_1(vec3<i32>(1i, -15880i, 0i), true, vec4<i32>(37i, 1i, -94301i, 0i), -1i, vec2<f32>(-1239f, 837f)), Struct_1(vec3<i32>(0i, -5545i, -1i), false, vec4<i32>(7139i, -55187i, -45595i, -37829i), -24711i, vec2<f32>(-626f, -1000f))), Struct_2(45u, Struct_1(vec3<i32>(1i, 2147483647i, 18917i), true, vec4<i32>(11008i, -1577i, 0i, 1i), 0i, vec2<f32>(1467f, 1895f)), Struct_1(vec3<i32>(0i, 2147483647i, 1i), true, vec4<i32>(2147483647i, i32(-2147483648), 49361i, -13587i), 0i, vec2<f32>(166f, 1081f)), Struct_1(vec3<i32>(21474i, -41011i, 66179i), false, vec4<i32>(2147483647i, -34858i, 5183i, -3728i), 1i, vec2<f32>(227f, 723f))), Struct_2(1u, Struct_1(vec3<i32>(0i, 0i, 15425i), false, vec4<i32>(-1i, -1i, 1i, i32(-2147483648)), 0i, vec2<f32>(-120f, -199f)), Struct_1(vec3<i32>(-1i, 20147i, 30602i), false, vec4<i32>(1430i, i32(-2147483648), 2147483647i, -24082i), 47672i, vec2<f32>(-112f, 345f)), Struct_1(vec3<i32>(15634i, -33032i, -48585i), true, vec4<i32>(-28249i, 0i, 22135i, 7020i), 1i, vec2<f32>(-764f, 1133f))));

var<private> global4: array<vec2<i32>, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec3<u32> {
    global2 = array<f32, 2>();
    let var_0 = global0.x;
    let var_1 = 1u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1316f)), global2[_wgslsmith_index_u32(var_1, 2u)]);
    let var_3 = global1.d | _wgslsmith_dot_vec4_i32((_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, u_input.d, 2147483647i, u_input.d), vec4<i32>(global1.d, global1.a.x, -26236i, 2147483647i)) ^ ~global1.c) >> (_wgslsmith_mult_vec4_u32(~u_input.c, u_input.c) % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(global1.c, ~global1.c));
    return select(vec3<u32>(_wgslsmith_sub_u32(2668u, 1u), _wgslsmith_add_u32(~(~var_1), var_1), max(~26726u, 46099u)), ~(~(~u_input.c.xyz)), vec3<bool>(global1.b, global0.x, all(select(vec4<bool>(global1.b, false, global1.b, global0.x), select(vec4<bool>(false, true, global1.b, true), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, global0.x, global1.b, true)), select(vec4<bool>(global1.b, global1.b, false, global1.b), vec4<bool>(true, global0.x, false, global1.b), global1.b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    let var_0 = true;
    let var_1 = func_3();
    let var_2 = arg_1;
    global4 = array<vec2<i32>, 10>();
    global0 = select(select(select(!(!vec2<bool>(var_0, true)), select(vec2<bool>(global0.x, true), vec2<bool>(true, global1.b), all(vec2<bool>(global0.x, true))), !(23844i == u_input.d)), vec2<bool>(all(vec3<bool>(true, true, true)), global1.d >= ~(-1i)), select(global0.x, false | var_0, true) | all(vec3<bool>(true, global1.b, global0.x))), select(select(select(select(vec2<bool>(global1.b, global1.b), vec2<bool>(var_0, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), var_0), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(any(vec3<bool>(var_0, var_0, false)), global0.x), true), vec2<bool>(var_0, true), true && all(!vec3<bool>(global0.x, global0.x, true))), vec2<bool>(all(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, true, false), vec3<bool>(global1.b, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, global0.x, true), false), global0.x)), !global0.x));
    return _wgslsmith_mod_i32(-10019i, -1i);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    global1 = Struct_1(vec3<i32>(countOneBits(u_input.d) | -2147483647i, ~arg_0.d.c.x, -14367i), all(!(!vec3<bool>(global0.x, true, global1.b))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, arg_0.d.a.x, 0i, -func_2(vec3<u32>(0u, arg_0.a, u_input.a.x), -2431f, global1.a.zy)), arg_0.d.c), arg_0.c.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-338f, _wgslsmith_f_op_f32(-global1.e.x)))) * arg_1));
    let var_0 = arg_0.d;
    global0 = vec2<bool>(global0.x, false);
    var var_1 = arg_0.a;
    var var_2 = vec3<i32>(-1i, _wgslsmith_sub_i32(2147483647i, 2147483647i), 1i);
    return _wgslsmith_add_i32(func_2(vec3<u32>(0u, abs(arg_0.a), _wgslsmith_mod_u32(u_input.b, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-327f))), global4[_wgslsmith_index_u32(68782u, 10u)]), arg_0.b.c.x) >> (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 2>();
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_div_i32(25030i, 51270i), -_wgslsmith_clamp_i32(global1.c.x, u_input.d, func_1(Struct_2(4294967295u, Struct_1(vec3<i32>(u_input.d, u_input.d, 39084i), false, global1.c, global1.c.x, vec2<f32>(1569f, 1730f)), Struct_1(global1.a, global1.b, vec4<i32>(3587i, -1i, -2147483647i, 64267i), 1i, global1.e), Struct_1(global1.a, false, vec4<i32>(global1.d, -28520i, global1.c.x, -5754i), 1i, global1.e)), vec2<f32>(global2[_wgslsmith_index_u32(8563u, 2u)], -539f))), firstLeadingBit(50599i)), false, vec4<i32>(abs(i32(-1i) * -2147483647i), _wgslsmith_add_i32(u_input.d, 19345i), min(-10559i, global1.c.x), ~u_input.d), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global1.c.zxy, global1.c.yyx) << (_wgslsmith_div_u32(u_input.b, 9578u) % 32u), -u_input.d | reverseBits(36070i)), -(~u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 2u)] + global2[_wgslsmith_index_u32(1u, 2u)]))))));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(global1.a, abs(vec3<i32>(_wgslsmith_sub_i32(-8289i, global1.a.x), ~global1.a.x, 22836i | var_0.c.x))), false, vec4<i32>(func_1(Struct_2(u_input.c.x, Struct_1(global1.a, var_0.b, var_0.c, global1.c.x, vec2<f32>(var_0.e.x, var_0.e.x)), Struct_1(var_0.c.zzy, false, vec4<i32>(84856i, u_input.d, 25126i, -1i), var_0.a.x, vec2<f32>(1000f, -1173f)), Struct_1(var_0.c.wwy, var_0.b, var_0.c, u_input.d, vec2<f32>(var_0.e.x, var_0.e.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.e), _wgslsmith_f_op_vec2_f32(var_0.e - vec2<f32>(global2[_wgslsmith_index_u32(109172u, 2u)], -731f))))), -1i, -u_input.d >> (reverseBits(_wgslsmith_sub_u32(0u, 0u)) % 32u), _wgslsmith_mod_i32(global1.a.x, 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, var_0.a.x, u_input.d), global1.c.wxx))), abs(global1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1301f, global2[_wgslsmith_index_u32(u_input.b, 2u)])))))))));
    global1 = Struct_1(global1.c.www | ~global1.c.zxz, all(select(select(vec2<bool>(var_1.b, true), vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b)), !select(vec2<bool>(global0.x, var_1.b), vec2<bool>(true, false), true), var_0.b)), abs(select(var_0.c, _wgslsmith_add_vec4_i32(vec4<i32>(-17465i, global1.d, global1.c.x, 26970i) & var_1.c, var_1.c), select(!vec4<bool>(true, true, var_1.b, var_0.b), vec4<bool>(false, global1.b, true, true), select(vec4<bool>(var_1.b, true, true, global0.x), vec4<bool>(global0.x, global1.b, true, global1.b), vec4<bool>(true, global0.x, false, var_0.b))))), _wgslsmith_mod_i32(var_1.c.x, var_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), -1903f))));
    let var_2 = global3[_wgslsmith_index_u32(2865u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.c.c.x, 24302i), vec2<f32>(var_0.e.x, 299f), var_1.c);
}

