struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 6441u), -39097i);

var<private> global1: array<Struct_3, 2>;

var<private> global2: Struct_5 = Struct_5(vec3<i32>(46833i, 23367i, 0i), Struct_2(vec4<u32>(1u, 27823u, 4294967295u, 51796u), 2147483647i), vec2<i32>(-31174i, -24391i), Struct_3(true, Struct_2(vec4<u32>(26195u, 4294967295u, 4294967295u, 21723u), 26811i), vec3<u32>(0u, 27998u, 4294967295u)), true);

var<private> global3: f32 = -2901f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<i32>) -> i32 {
    let var_0 = global2.d.b;
    let var_1 = vec2<bool>(all(!vec3<bool>(select(global2.d.a, global2.e, global2.d.a), any(vec2<bool>(global2.d.a, true)), true)), true);
    global1 = array<Struct_3, 2>();
    var var_2 = 0i;
    global1 = array<Struct_3, 2>();
    return select(~(-1i >> (1u % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~arg_3.wwx ^ vec3<i32>(global2.a.x, 15783i, global0.b), ~global2.a), 36590i), !(!select(true, global2.b.b <= global2.a.x, true)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_2) -> i32 {
    global1 = array<Struct_3, 2>();
    var var_0 = Struct_1(global2.b.a.x, all(select(arg_1.zx, arg_1.zz, arg_1.zx)));
    global1 = array<Struct_3, 2>();
    var var_1 = Struct_5(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-75690i), abs(2147483647i), global2.c.x, arg_3.b), vec4<i32>(_wgslsmith_mult_i32(1i, -27264i), _wgslsmith_mod_i32(arg_3.b, global0.b), arg_3.b, _wgslsmith_mult_i32(arg_3.b, 10511i))), 1i), arg_3, reverseBits(global2.a.zx), global1[_wgslsmith_index_u32(~(4294967295u >> (firstLeadingBit(66692u ^ arg_3.a.x) % 32u)), 2u)], !any(select(select(vec4<bool>(false, true, arg_1.x, var_0.b), vec4<bool>(arg_1.x, global2.d.a, arg_1.x, global2.e), true), !vec4<bool>(false, arg_1.x, var_0.b, true), !global2.d.a)));
    let var_2 = vec3<f32>(-135f, arg_0.x, arg_2);
    return 1i;
}

fn func_2() -> vec4<u32> {
    let var_0 = global0.a.x;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) * -1000f)), 1f)));
    let var_2 = reverseBits(max(-func_3(vec4<f32>(-502f, -440f, 1413f, var_1.a), vec3<bool>(true, true, true), _wgslsmith_div_f32(var_1.a, var_1.a), global2.b), ~(~global2.a.x)));
    global0 = global2.b;
    global2 = Struct_5(global2.a, global2.d.b, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, abs(~u_input.c)), -_wgslsmith_div_vec2_i32(-global2.a.yz, abs(vec2<i32>(0i, var_2)))), Struct_3(global2.d.a && false, global2.d.b, ~countOneBits(global2.b.a.xzy) ^ (vec3<u32>(0u, global2.b.a.x, u_input.d.x) | vec3<u32>(3223u, global0.a.x, u_input.d.x))), any(!select(vec2<bool>(global2.d.a, false), vec2<bool>(global2.e, true), global2.d.a)));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global2.d.b.a >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.a.x, global0.a.x, global2.b.a.x, u_input.b), global0.a) % vec4<u32>(32u)), vec4<u32>(26832u, 7426u, global0.a.x, ~(4294967295u & u_input.a))), ~_wgslsmith_clamp_vec4_u32(~global2.d.b.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(21556u, 94803u, 1u, global2.b.a.x), u_input.d, _wgslsmith_mod_vec4_u32(vec4<u32>(global2.d.b.a.x, u_input.b, 1u, global0.a.x), vec4<u32>(global2.b.a.x, global2.b.a.x, 54058u, global0.a.x))), ~vec4<u32>(4294967295u, global2.d.b.a.x, 1u, 20041u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(~(~func_1(global2.a.zy, global2.c, Struct_4(-391f), vec4<i32>(global0.b, u_input.c, -1i, global0.b))) <= global2.d.b.b, true, global2.e, all(select(vec2<bool>(true, true), select(!vec2<bool>(true, global2.d.a), vec2<bool>(false, global2.e), true), 15063u >= global0.a.x)));
    let var_1 = func_2();
    global0 = Struct_2(~_wgslsmith_sub_vec4_u32(select(select(global0.a, global2.b.a, var_0.x), vec4<u32>(4294967295u, 4294967295u, 4108u, u_input.a), all(vec4<bool>(var_0.x, global2.e, false, var_0.x))), var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -(~(-13342i)), _wgslsmith_add_i32(1i, global0.b), 2147483647i), _wgslsmith_div_vec4_i32(~vec4<i32>(-38575i, u_input.c, global0.b, 18246i) ^ vec4<i32>(1i, -1i, -69345i, u_input.c), vec4<i32>(global2.b.b >> (0u % 32u), _wgslsmith_sub_i32(global2.a.x, 29992i), 11281i, firstTrailingBit(2147483647i)))));
    global2 = Struct_5(~vec3<i32>(-global0.b, -10002i & u_input.c, func_3(vec4<f32>(-740f, 1664f, 1029f, 311f), var_0.xyy, -287f, Struct_2(vec4<u32>(6741u, 0u, var_1.x, global0.a.x), u_input.c))) | -reverseBits(vec3<i32>(global2.d.b.b, global0.b, u_input.c)), global2.d.b, vec2<i32>(~u_input.c, _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(global2.a, vec3<i32>(global2.a.x, -6252i, -22629i)), -1i)), global2.d, true);
    global2 = Struct_5(global2.a, Struct_2(~(~(vec4<u32>(global2.b.a.x, 79475u, 66867u, global2.d.b.a.x) & vec4<u32>(global2.d.b.a.x, 1u, 1u, 32997u))), countOneBits(firstTrailingBit(global2.d.b.b))), vec2<i32>(u_input.c, global2.c.x), Struct_3(true, global2.d.b, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.a.yxx, ~vec3<u32>(39638u, 31832u, 1u), vec3<u32>(34891u, 53135u, 51694u) >> (u_input.d.zxz % vec3<u32>(32u))), max(~vec3<u32>(1u, 15936u, 4294967295u), global2.b.a.xyz))), true & ((true | any(vec3<bool>(var_0.x, true, var_0.x))) && true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(7069i, 37140i, u_input.c, 1i), reverseBits(vec4<i32>(19271i, -2147483647i, 1i, u_input.c))) & (vec4<i32>(-1i) * -vec4<i32>(7268i, 2147483647i, 0i, global2.a.x)), abs(abs(vec4<i32>(global0.b, global0.b, u_input.c, global0.b))) >> ((~vec4<u32>(0u, global0.a.x, global0.a.x, global0.a.x) ^ vec4<u32>(u_input.d.x, u_input.d.x, 21715u, 28157u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(696f, -1079f, -1000f, -1702f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -990f, 923f, 252f))), var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(585f, 1380f, -1070f, -221f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(950f, 797f, -1000f, 264f) * vec4<f32>(-468f, 1000f, -410f, 278f))))), u_input.d.x, ~(-min(u_input.c, ~1i)));
}

