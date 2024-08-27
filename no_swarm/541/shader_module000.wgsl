struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<bool, 31>();
    var var_0 = !(!(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))));
    var var_1 = vec3<bool>(any(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(19996u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), true), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false)), !vec3<bool>(var_0.x, arg_0, false))), true, false);
    let var_2 = var_0.zx;
    var var_3 = vec3<i32>(62192i, -37260i, -((_wgslsmith_dot_vec2_i32(vec2<i32>(-40176i, 2147483647i), vec2<i32>(-21648i, 7112i)) & _wgslsmith_mult_i32(-6148i, -3364i)) << (max(u_input.a.x, u_input.a.x) % 32u)));
    return Struct_1(u_input.a);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -1i, 40840i), firstTrailingBit(vec3<i32>(-49742i, 2147483647i, 1995i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 4847i, 38032i), vec3<i32>(0i, 540i, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(9645i, 1i, -1i), vec3<i32>(-1i, 42309i, -1i)), -vec3<i32>(-1i, -66039i, -2778i)), (global0[_wgslsmith_index_u32(0u, 31u)] && true) | global0[_wgslsmith_index_u32(arg_0.a.x, 31u)]), vec3<i32>(1i, 1i, 1i) >> ((~vec3<u32>(arg_0.a.x, 79219u, 29437u) >> (~vec3<u32>(4294967295u, arg_0.a.x, 10976u) % vec3<u32>(32u))) % vec3<u32>(32u))), countOneBits(abs(firstTrailingBit(vec3<i32>(-1i, 1i, -59522i))) >> (vec3<u32>(max(u_input.a.x, u_input.a.x), ~4294967295u, countOneBits(1u)) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(41490i, 5126i, 2147483647i)), firstLeadingBit(vec3<i32>(-9612i, -27479i, 7720i))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> bool {
    global0 = array<bool, 31>();
    let var_0 = Struct_2(-19823i, func_2(func_2(!global0[_wgslsmith_index_u32(u_input.a.x, 31u)]).a.x < 22853u), global0[_wgslsmith_index_u32(~4294967295u, 31u)]);
    global0 = array<bool, 31>();
    var var_1 = select(vec3<bool>(true, true, false), select(!vec3<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 31u)], true, true, global0[_wgslsmith_index_u32(1u, 31u)])), true), vec3<bool>(any(!vec4<bool>(var_0.c, true, var_0.c, global0[_wgslsmith_index_u32(45420u, 31u)])), true, var_0.c), select(select(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_0.b.a.x, 31u)]), select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(false, false, false), false), true), vec3<bool>(all(vec4<bool>(false, false, var_0.c, false)), var_0.c, select(var_0.c, false, true)), any(vec2<bool>(false, true)) | true)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false, var_0.c), vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 31u)], global0[_wgslsmith_index_u32(var_0.b.a.x, 31u)], global0[_wgslsmith_index_u32(var_0.b.a.x, 31u)]), false), true), vec3<bool>(!(!global0[_wgslsmith_index_u32(arg_1, 31u)]), true, true), !vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 31u)], any(vec3<bool>(true, var_0.c, true)), true)));
    global1 = ~max(1u, 1u);
    return true != all(select(select(!var_1.yz, vec2<bool>(true, var_1.x), !vec2<bool>(true, var_0.c)), vec2<bool>(arg_0.x > arg_0.x, !global0[_wgslsmith_index_u32(31201u, 31u)]), true));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_2(~(-(~arg_0)), func_2(false), !any(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))));
    global0 = array<bool, 31>();
    let var_1 = Struct_2(-2147483647i, func_2(global0[_wgslsmith_index_u32(var_0.b.a.x, 31u)]), !global0[_wgslsmith_index_u32(var_0.b.a.x, 31u)]);
    var var_2 = Struct_1(firstLeadingBit(vec2<u32>(~abs(0u), ~1u)));
    var_0 = Struct_2(reverseBits(var_0.a), func_2(false), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1898f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(403f, 556f), vec2<f32>(-696f, -451f)))) * vec2<f32>(_wgslsmith_f_op_f32(step(-1557f, 267f)), -1000f)), u_input.a.x, func_3(var_1.b), var_1.a));
    return vec4<bool>(var_0.c, true, true, !(true || !var_0.c) & (true || (func_3(var_0.b).x >= abs(1i))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    let var_0 = func_2(true);
    var var_1 = ~(var_0.a.x >> (~_wgslsmith_div_u32(select(arg_1.b.a.x, var_0.a.x, arg_1.c), ~var_0.a.x) % 32u));
    var var_2 = Struct_2(-2147483647i, Struct_1(abs(countOneBits(var_0.a))), true);
    var var_3 = ~vec3<i32>(var_2.a, ~arg_1.a, 1i);
    let var_4 = arg_0.zy;
    return select(arg_0.xzy, arg_0.zyy, !vec3<bool>(func_1(-arg_2).x, !(!global0[_wgslsmith_index_u32(7029u, 31u)]), select(true, !var_2.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1u;
    var var_0 = all(func_5(!func_1(0i), Struct_2(~1i, Struct_1(u_input.a), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(120452u, 31u)])) && true), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~28778i, _wgslsmith_clamp_i32(-18708i, -1i, 52896i)), ~_wgslsmith_clamp_i32(23i, 62395i, 19975i), -1i)));
    var_0 = false;
    let var_1 = func_1(-((-23607i >> (1u % 32u)) | func_3(func_2(global0[_wgslsmith_index_u32(0u, 31u)])).x)).zz;
    var_0 = var_1.x | false;
    var_0 = func_5(vec4<bool>(global0[_wgslsmith_index_u32(58012u, 31u)], true, ~(~u_input.a.x) >= ~u_input.a.x, true), Struct_2(1i, Struct_1(u_input.a), true), _wgslsmith_div_i32(~16825i, 1i)).x;
    var var_2 = _wgslsmith_mult_i32(abs(-37678i), _wgslsmith_add_i32(~2147483647i, firstTrailingBit(2147483647i))) << (0u % 32u);
    let var_3 = Struct_2(-18773i, Struct_1(reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 30680u), u_input.a), ~vec2<u32>(u_input.a.x, u_input.a.x)))), global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(4558u & u_input.a.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(49762u, u_input.a.x, u_input.a.x, 46692u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u)), 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, var_3.a, -4053i, var_3.a)), (vec4<i32>(var_3.a, var_3.a, 0i, var_3.a) & vec4<i32>(1745i, 0i, 2147483647i, var_3.a)) << (max(vec4<u32>(62316u, 4294967295u, var_3.b.a.x, 0u), vec4<u32>(u_input.a.x, 21846u, 0u, var_3.b.a.x)) % vec4<u32>(32u))));
}

