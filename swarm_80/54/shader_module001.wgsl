struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<u32>, 21>;

var<private> global2: vec3<i32> = vec3<i32>(-5804i, 15582i, 0i);

var<private> global3: Struct_1 = Struct_1(-36871i, vec3<u32>(17859u, 1732u, 29935u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = global3.b.xx;
    let var_1 = vec2<u32>(arg_1.b.x, 52055u);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(~2582u) << (~var_1.x % 32u), ~arg_2.a.b.x ^ _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.b.x, 1u, 1168u), _wgslsmith_add_u32(1u, var_0.x)), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~global3.b.x, 21u)], global1[_wgslsmith_index_u32(18326u, 21u)])), 21u)];
    var var_3 = _wgslsmith_clamp_vec2_i32(select(reverseBits(vec2<i32>(arg_2.a.a, 1i)) ^ ~firstLeadingBit(vec2<i32>(-26196i, arg_1.a)), firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(arg_2.a.a, -1i, -63360i), _wgslsmith_sub_i32(1i, global3.a))), true), global2.zx, global2.xz);
    let var_4 = global3.b.x;
    return _wgslsmith_add_vec3_u32(arg_2.a.b, ~_wgslsmith_mod_vec3_u32(global3.b, global3.b));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)));
    global3 = Struct_1(_wgslsmith_sub_i32(max(_wgslsmith_mod_i32(arg_1.a.a & arg_1.a.a, _wgslsmith_div_i32(-39665i, global3.a)), -26362i), ~(~15151i) | _wgslsmith_mult_i32(-arg_1.a.a, global2.x)), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, arg_1.a.b.x, 0u), _wgslsmith_mult_vec3_u32(func_3(vec3<bool>(false, true, false), arg_1.a, arg_1), func_3(vec3<bool>(true, false, false), arg_1.a, arg_1)), max(vec3<u32>(12680u, global3.b.x, global3.b.x), ~vec3<u32>(arg_2.x, global3.b.x, 0u))), vec3<u32>(global3.b.x, ~0u ^ _wgslsmith_mod_u32(arg_1.a.b.x, arg_1.a.b.x), _wgslsmith_mod_u32(arg_2.x ^ 39181u, 1u)), true));
    return all(select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, select(all(vec2<bool>(false, true)), all(vec4<bool>(false, false, true, false)), true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), select(false, false, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(arg_0 == 496f, all(vec4<bool>(false, false, false, false))))));
}

fn func_1() -> u32 {
    global1 = array<vec4<u32>, 21>();
    global2 = vec3<i32>(0i, ~max(~_wgslsmith_clamp_i32(-24371i, 52133i, global2.x), _wgslsmith_add_i32(global3.a, global2.x) & global2.x), -max(-firstLeadingBit(16416i), -32782i));
    global0 = any(!vec3<bool>(true, true, func_2(_wgslsmith_f_op_f32(min(572f, -1000f)), Struct_2(Struct_1(u_input.b, vec3<u32>(global3.b.x, 89979u, global3.b.x))), select(vec4<u32>(16788u, global3.b.x, 0u, global3.b.x), global1[_wgslsmith_index_u32(0u, 21u)], true))));
    var var_0 = Struct_1(abs(_wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -14919i, -global2.x), global3.a)), _wgslsmith_mult_vec3_u32(min(~_wgslsmith_div_vec3_u32(global3.b, global3.b), vec3<u32>(select(44571u, 0u, false), ~global3.b.x, ~global3.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(select(global3.b.x, 4294967295u, true), 1u, global3.b.x), _wgslsmith_add_vec3_u32(global3.b, ~global3.b))));
    var var_1 = Struct_2(Struct_1(-16665i, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b, _wgslsmith_clamp_vec3_u32(global3.b, var_0.b, var_0.b)), ~min(var_0.b, global3.b))));
    return var_1.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 21>();
    global0 = true;
    var var_0 = vec2<i32>(global2.x, i32(-1i) * -43053i);
    global3 = Struct_1(firstLeadingBit(-min(-28677i, ~global2.x)), vec3<u32>(global3.b.x, func_1(), func_1()));
    let var_1 = global3.b.x;
    let var_2 = Struct_1(var_0.x, firstTrailingBit(~(~global3.b >> (_wgslsmith_mod_vec3_u32(global3.b, global3.b) % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(150f, 460f)))), _wgslsmith_f_op_f32(1812f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(596f - 711f))))));
    let var_4 = var_3.x;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(-var_4));
}

