struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<f32>(355f, -2576f, 488f), vec4<bool>(false, true, false, true)), Struct_2(vec3<f32>(2428f, -389f, -163f), vec4<bool>(true, false, false, false)), Struct_2(vec3<f32>(-633f, -1019f, 138f), vec4<bool>(false, true, true, false)), Struct_2(vec3<f32>(-299f, 131f, -389f), vec4<bool>(false, true, true, true)), Struct_2(vec3<f32>(936f, -809f, -930f), vec4<bool>(true, true, false, true)), Struct_2(vec3<f32>(-2719f, -1581f, 645f), vec4<bool>(true, true, true, false)), Struct_2(vec3<f32>(2008f, -1654f, 391f), vec4<bool>(true, true, false, false)), Struct_2(vec3<f32>(1000f, 1597f, -236f), vec4<bool>(false, true, false, true)), Struct_2(vec3<f32>(-615f, -593f, 829f), vec4<bool>(true, true, true, true)), Struct_2(vec3<f32>(-597f, -477f, 711f), vec4<bool>(false, false, true, false)), Struct_2(vec3<f32>(642f, 1000f, -743f), vec4<bool>(true, false, true, false)), Struct_2(vec3<f32>(-433f, 418f, -1228f), vec4<bool>(false, true, true, false)), Struct_2(vec3<f32>(1151f, -1000f, 557f), vec4<bool>(true, true, true, true)), Struct_2(vec3<f32>(-1028f, -2612f, -180f), vec4<bool>(false, false, true, true)), Struct_2(vec3<f32>(-510f, 127f, 1645f), vec4<bool>(true, false, true, false)), Struct_2(vec3<f32>(-351f, -358f, 709f), vec4<bool>(false, false, false, false)), Struct_2(vec3<f32>(431f, 1225f, -732f), vec4<bool>(true, false, true, true)), Struct_2(vec3<f32>(-361f, 938f, 1046f), vec4<bool>(false, true, true, true)), Struct_2(vec3<f32>(-500f, 1248f, 451f), vec4<bool>(false, true, false, true)), Struct_2(vec3<f32>(-171f, -673f, 783f), vec4<bool>(true, false, false, true)));

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(i32(-2147483648), 1i, 2147483647i, 19724i), vec4<i32>(-44198i, -1212i, 7995i, -29575i), vec4<i32>(-42172i, -7829i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 1i, -44396i, -1i), vec4<i32>(2147483647i, 13107i, 39875i, i32(-2147483648)), vec4<i32>(-14340i, -34840i, 8570i, 0i), vec4<i32>(2147483647i, -37079i, 9993i, i32(-2147483648)), vec4<i32>(24170i, 2147483647i, -1i, -48249i), vec4<i32>(-3000i, -29316i, 27162i, 1i), vec4<i32>(-32826i, i32(-2147483648), -1i, 61113i), vec4<i32>(-24926i, -1i, i32(-2147483648), -3825i), vec4<i32>(1i, 1i, 40423i, 28675i), vec4<i32>(-3291i, 1i, 43783i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -8530i, -1i), vec4<i32>(1i, -30984i, 2350i, 1i), vec4<i32>(2147483647i, -55847i, 0i, 1i), vec4<i32>(-9847i, -1i, -50636i, i32(-2147483648)), vec4<i32>(24087i, -15103i, i32(-2147483648), 40730i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(0i, -6640i, 2147483647i, 1i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -4414i), vec4<i32>(-9549i, 0i, i32(-2147483648), 31143i), vec4<i32>(-5677i, -6584i, -43618i, -15517i), vec4<i32>(0i, 0i, 28465i, -1i), vec4<i32>(-24744i, -34466i, 1784i, 2147483647i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> bool {
    global1 = array<vec4<i32>, 25>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(63616u, ~56015u), ~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, arg_0.b.x), ~arg_0.b)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x) << (~arg_0.b % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(arg_0.b, u_input.c)));
    let var_1 = -1402f;
    return arg_1.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(arg_3.b.yy, ~arg_0 | reverseBits(arg_2.yx >> (vec2<u32>(1u, arg_0.x) % vec2<u32>(32u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(200f * arg_3.a.x), -380f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-140f + arg_3.a.x), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-411f - 663f))))), select(select(vec4<bool>(!var_1.a.x, any(var_1.a), any(arg_3.b.wyx), 2147483647i <= u_input.b), select(select(arg_3.b, arg_3.b, arg_3.b.x), select(arg_3.b, arg_3.b, var_1.a.x), arg_3.b), !func_1(Struct_1(arg_3.b.zx, arg_0), vec4<bool>(arg_3.b.x, false, true, false), u_input.b, 699f)), !arg_3.b, arg_3.b));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(6877u, firstTrailingBit(6315u)) >> (firstLeadingBit(arg_2.x) % 32u), 20u)];
    let var_4 = var_1.b;
    return -1699f;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_3.x;
    var var_1 = !vec4<bool>(func_1(Struct_1(!arg_1.yx, vec2<u32>(arg_2, arg_0)), !vec4<bool>(arg_1.x, true, true, arg_1.x), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(arg_0, 42502u), u_input.c.x, vec3<u32>(arg_0, arg_2, arg_2), global0[_wgslsmith_index_u32(122714u, 20u)])), _wgslsmith_f_op_f32(495f * 1479f))), !(arg_1.x || all(arg_1.xy)), 0i != _wgslsmith_sub_i32(arg_3.x, arg_3.x), arg_1.x);
    var_1 = vec4<bool>(func_1(Struct_1(select(vec2<bool>(arg_1.x, true), var_1.ww, arg_1.zy), max(u_input.c >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), u_input.c)), select(vec4<bool>(true, arg_1.x, true, var_1.x), vec4<bool>(select(false, true, var_1.x), arg_1.x, any(vec4<bool>(true, true, arg_1.x, arg_1.x)), var_1.x), any(!arg_1)), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1455f + -1798f), _wgslsmith_f_op_f32(1376f + 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-211f, 1815f)))), arg_1.x, true, all(var_1.xw));
    var_1 = vec4<bool>(all(vec4<bool>(any(vec4<bool>(arg_1.x, true, true, arg_1.x)) & false, arg_1.x, !any(arg_1), true)), false, !var_1.x || false, arg_1.x);
    global1 = array<vec4<i32>, 25>();
    return vec2<bool>(all(vec3<bool>(any(!vec4<bool>(true, false, arg_1.x, true)), any(vec2<bool>(true, false)) | var_1.x, all(select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(false, false, true, var_1.x), false)))), !select(!(!var_1.x), !func_1(Struct_1(vec2<bool>(true, arg_1.x), vec2<u32>(u_input.c.x, 43344u)), vec4<bool>(arg_1.x, var_1.x, arg_1.x, arg_1.x), 2147483647i, -589f), !arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_div_vec2_u32(max(~(~vec2<u32>(2862u, 4294967295u)), vec2<u32>(1u, u_input.c.x | u_input.c.x)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(23267u, 29350u) >> (u_input.c % vec2<u32>(32u)), u_input.c << (vec2<u32>(1u, 37482u) % vec2<u32>(32u))), ~u_input.c << (_wgslsmith_sub_vec2_u32(vec2<u32>(14480u, 19536u), vec2<u32>(35819u, u_input.c.x)) % vec2<u32>(32u)), true || func_1(Struct_1(vec2<bool>(false, false), u_input.c), vec4<bool>(false, false, true, false), u_input.a, -483f))));
    var var_1 = select(!func_2(u_input.c.x, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), 4294967295u, -(~vec4<i32>(u_input.b, u_input.b, u_input.a, 3963i))), vec2<bool>(!(!all(vec4<bool>(false, false, false, true))), !(false | any(vec2<bool>(true, false)))), !select(vec2<bool>(true, any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), (u_input.d << (135424u % 32u)) == -u_input.b));
    var var_2 = Struct_1(vec2<bool>(all(func_2(100917u, !vec3<bool>(var_1.x, true, var_1.x), 4294967295u, vec4<i32>(u_input.b, -2147483647i, u_input.d, 2147483647i))), !func_2(4294967295u, select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, true, true), var_1.x), 49444u, global1[_wgslsmith_index_u32(1u, 25u)]).x), u_input.c);
    let var_3 = max(1743u, u_input.c.x);
    var var_4 = vec4<u32>(35302u, 0u, ~(~(~u_input.c.x & ~1u)), ~(~var_2.b.x));
    global1 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.wyw);
}

