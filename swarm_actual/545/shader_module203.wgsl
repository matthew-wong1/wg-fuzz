struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<u32, 23> = array<u32, 23>(5534u, 1u, 24613u, 89283u, 37742u, 0u, 0u, 0u, 7537u, 0u, 4294967295u, 1u, 22670u, 64544u, 0u, 81361u, 4294967295u, 24476u, 96674u, 4294967295u, 25959u, 43628u, 2628u);

var<private> global3: array<vec2<i32>, 18>;

var<private> global4: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_1(u_input.e);
    global2 = array<u32, 23>();
    let var_1 = vec3<bool>(reverseBits(~(-u_input.b)) >= select(-2147483647i, max(-1i, arg_3) >> (~19279u % 32u), all(!vec3<bool>(true, arg_1.x, true))), arg_0.x != _wgslsmith_f_op_f32(-945f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x + -890f)))), false);
    var var_2 = var_0;
    let var_3 = firstTrailingBit(~33955u ^ global2[_wgslsmith_index_u32(0u, 23u)]);
    return select(var_1.yz, global4.zz, true);
}

fn func_2() -> bool {
    var var_0 = vec3<i32>(-1i) * -max(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.e.x) << (vec3<u32>(global2[_wgslsmith_index_u32(59712u, 23u)], 4294967295u, 4294967295u) % vec3<u32>(32u)), u_input.e), u_input.e);
    global3 = array<vec2<i32>, 18>();
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    global4 = vec3<bool>(!global4.x, !(!global4.x), true);
    let var_2 = global1[_wgslsmith_index_u32(u_input.d.x ^ ~u_input.c, 9u)];
    return !all(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1353f, -552f, 800f, -1399f) * vec4<f32>(2199f, -1094f, 507f, 188f)), global4.yx, Struct_1(var_2.a), -1i)) & true;
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 9>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], 23u)], u_input.a.x, u_input.d.x), 23u)] >> (u_input.d.x % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 1u), 23u)]), max(global2[_wgslsmith_index_u32(7138u, 23u)], _wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], 23u)] ^ u_input.c, 1u))), 9u)];
    global4 = !select(vec3<bool>(global4.x, func_2(), true), select(vec3<bool>(global4.x, true, all(global4.xz)), vec3<bool>(true, any(vec4<bool>(global4.x, global4.x, false, true)), func_2()), select(vec3<bool>(true, true, global4.x), vec3<bool>(true, true, true), true)), true || global4.x);
    global1 = array<Struct_1, 9>();
    global3 = array<vec2<i32>, 18>();
    return -(u_input.e.x >> (~global2[_wgslsmith_index_u32(57777u, 23u)] % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 23>();
    let var_0 = Struct_1(max(~vec3<i32>(~(-2147483647i), _wgslsmith_sub_i32(31502i, u_input.b), _wgslsmith_div_i32(2147483647i, u_input.e.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b >> (global2[_wgslsmith_index_u32(1u, 23u)] % 32u), -u_input.e.x, u_input.e.x), ~max(vec3<i32>(u_input.b, u_input.e.x, -58023i), vec3<i32>(1905i, u_input.e.x, u_input.e.x)))));
    let var_1 = -1i;
    let var_2 = vec2<i32>(55713i, func_1());
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1620f, -458f, 1280f, 254f), vec4<f32>(-1000f, 1418f, 197f, 208f)))))))));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * -1000f), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, 306f)))) - var_3.x));
}

