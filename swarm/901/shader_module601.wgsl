struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(6852u, 33432u);

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec2<i32>;

var<private> global3: vec3<f32> = vec3<f32>(368f, -368f, 1540f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, min(0u, global0.x), u_input.a, ~62054u) ^ (select(vec4<u32>(u_input.a, u_input.a, u_input.a, global0.x), vec4<u32>(global0.x, 0u, global0.x, 54715u), false) & firstTrailingBit(vec4<u32>(109754u, u_input.a, 38432u, 0u))), vec4<u32>(~(60240u << (u_input.a % 32u)), ~65286u, ~(~0u), _wgslsmith_mult_u32(4294967295u, reverseBits(u_input.a)))), ~(~(~u_input.a) << (_wgslsmith_mult_u32(1u & u_input.a, 1u | u_input.a) % 32u)), global0.x);
    var var_1 = ~(~(~_wgslsmith_clamp_vec2_u32(var_0.zx, _wgslsmith_mult_vec2_u32(var_0.xx, vec2<u32>(1u, global0.x)), ~var_0.yy)));
    global3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1968f, global3.x, global3.x) + vec3<f32>(global3.x, -1000f, -512f))), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, -292f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, 916f, -858f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, -1000f) * vec3<f32>(851f, global3.x, -811f)))))));
    var var_2 = ~(~(global2.x ^ global2.x));
    var var_3 = !(var_1.x == firstTrailingBit(~(~1u)));
    return any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
}

fn func_2() -> bool {
    let var_0 = false;
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, 1372f), vec3<f32>(331f, -1525f, global3.x), var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-367f, global3.x, global3.x) * vec3<f32>(global3.x, global3.x, global3.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, global3.x, -1779f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2283f, global3.x, global3.x, global3.x) * vec4<f32>(global3.x, -871f, global3.x, global3.x)) * vec4<f32>(-1504f, global3.x, global3.x, 833f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -572f, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, global3.x, global3.x, global3.x)))), (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global2.x), vec2<i32>(-2147483647i, -34461i)) >> (global0.x % 32u)) >= _wgslsmith_sub_i32(38719i, firstTrailingBit(33733i)))));
    var var_2 = vec3<u32>(1u, ~global0.x << (_wgslsmith_clamp_u32(global0.x, global0.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 1u), 0u & global0.x)) % 32u), u_input.a);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + 165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)));
    return !func_3();
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_u32(7967u, ~global0.x);
    global1 = array<Struct_1, 7>();
    var var_1 = vec3<bool>(select(all(vec2<bool>(func_2(), true)), true, !(!all(vec3<bool>(true, true, true)))), true, true | any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(trunc(748f));
    let var_3 = true || var_1.x;
    return var_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(global3.x));
    let var_1 = any(!select(select(func_1(vec2<u32>(u_input.a, 1u)), func_1(vec2<u32>(global0.x, u_input.a)), true), func_1(select(vec2<u32>(14224u, global0.x), vec2<u32>(4294967295u, 39247u), vec2<bool>(false, true))), _wgslsmith_mult_i32(global2.x, 1i) <= ~0i));
    var var_2 = global1[_wgslsmith_index_u32(~countOneBits(4580u), 7u)];
    var_2 = global1[_wgslsmith_index_u32(17674u, 7u)];
    var var_3 = -vec4<i32>(_wgslsmith_sub_i32(global2.x, global2.x), global2.x, -966i, ~var_2.b);
    var var_4 = ~countOneBits(var_3.xzy) >> (abs(countOneBits(vec3<u32>(u_input.a, firstTrailingBit(global0.x), global0.x))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, abs(~global0.x), 1u) | select(~(vec3<u32>(u_input.a, u_input.a, 18968u) << (vec3<u32>(u_input.a, u_input.a, 5624u) % vec3<u32>(32u))), ~vec3<u32>(1u, 4001u, global0.x) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 13376u, u_input.a), vec3<u32>(1u, u_input.a, 0u)), vec3<bool>(true, true, true)), var_3.x, var_0, ~(~_wgslsmith_div_vec2_i32(var_4.xz >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), var_3.zy)));
}

