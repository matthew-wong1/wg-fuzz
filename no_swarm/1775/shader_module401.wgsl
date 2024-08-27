struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(0i, 0i)), Struct_1(vec2<i32>(-35413i, 1i)), Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(-7172i, 4924i)), Struct_1(vec2<i32>(-351i, 0i)), Struct_1(vec2<i32>(59436i, 14516i)), Struct_1(vec2<i32>(-13964i, -32124i)), Struct_1(vec2<i32>(43984i, -20628i)), Struct_1(vec2<i32>(2147483647i, -14046i)), Struct_1(vec2<i32>(1i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 13770i)));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(0i, -6749i));

var<private> global3: i32 = -7771i;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = 10252i;
    global3 = _wgslsmith_mult_i32(global2.a.x, firstLeadingBit(min(762i, -1i)));
    var var_1 = Struct_1(-vec2<i32>(arg_2, firstLeadingBit(-45512i)));
    var_0 = arg_2;
    var var_2 = true;
    return global0.x || (3781i > arg_2);
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(18199u, _wgslsmith_sub_u32(u_input.a, u_input.a)), u_input.a) << (u_input.a % 32u), 12u)];
    var var_1 = all(select(vec4<bool>(global0.x, func_3(global1[_wgslsmith_index_u32(0u & u_input.a, 12u)], vec3<bool>(global0.x, global0.x, true), 27138i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 26311u), 12u)]), true, !(!global0.x)), !select(vec4<bool>(false, false, global0.x, true), !vec4<bool>(false, true, global0.x, global0.x), true), select(select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, false, global0.x), global0.x), vec4<bool>(false, global0.x, global0.x, true), false), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true)), vec4<bool>(select(false, true, false), global0.x && false, true, !global0.x))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 12u)];
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 12u)];
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -356f);
    return global1[_wgslsmith_index_u32(29330u, 12u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    global4 = u_input.a;
    var var_1 = Struct_1(vec2<i32>(countOneBits(func_2().a.x) | 1i, abs(var_0.a.x)));
    let var_2 = ~var_1.a;
    let var_3 = Struct_1(global2.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a ^ u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(102767u, abs(1u)))), 12u)];
    var var_2 = Struct_1(var_1.a);
    let var_3 = (((~vec4<i32>(26065i, 2147483647i, var_1.a.x, 2147483647i) << (select(vec4<u32>(var_0, var_0, 7835u, var_0), vec4<u32>(5709u, var_0, u_input.a, u_input.a), vec4<bool>(true, false, true, false)) % vec4<u32>(32u))) >> (vec4<u32>(34373u, reverseBits(1u), ~1u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(56016u, ~var_0 >> (~1u % 32u), var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 0u, var_0), ~vec3<u32>(var_0, 1u, 0u))) % vec4<u32>(32u))) & vec4<i32>(var_2.a.x, 21932i, -global2.a.x, -1i);
    var var_4 = func_1();
    var_4 = global1[_wgslsmith_index_u32(abs(var_0) << (select(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(var_0, 90077u, 3125u)), ~(~vec3<u32>(1u, var_0, 50854u))), var_0, global0.x) % 32u), 12u)];
    let var_5 = func_1();
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-28015i), vec3<f32>(-1106f, 741f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -809f), -241f))), ~_wgslsmith_sub_vec3_i32(var_3.wzw, vec3<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, var_4.a.x, 2147483647i), func_2().a.x)));
}

