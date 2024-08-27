struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(0i, -1i);

var<private> global1: array<Struct_2, 2>;

var<private> global2: f32;

var<private> global3: Struct_4;

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: f32) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d.c.xx * _wgslsmith_f_op_vec2_f32(step(global3.d.c.zw, vec2<f32>(arg_3, _wgslsmith_f_op_f32(global3.d.c.x - -1000f))))));
    var var_2 = global3.a;
    global4 = vec2<i32>(-372i, -1i);
    global0 = array<i32, 2>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3.d.c.zzz), global3.d.c.zzy)) + _wgslsmith_f_op_vec3_f32(global3.d.c.xxy - _wgslsmith_f_op_vec3_f32(step(global3.d.c.wyz, vec3<f32>(-445f, 1772f, var_1.x)))))) * global3.d.c.zww);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_5(vec4<bool>(false, global3.d.a.x, arg_0, select(!global3.d.e.x || true, arg_0, !all(vec2<bool>(arg_0, false)))));
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(global3.d.d, select(firstTrailingBit(global3.c), ~11507u, all(var_0.a)) & 4294967295u), _wgslsmith_add_u32(u_input.d, global3.c), 1u, 0u);
    global0 = array<i32, 2>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.d.c.zzx + _wgslsmith_f_op_vec3_f32(-global3.d.c.zwx)) * vec3<f32>(-466f, _wgslsmith_f_op_f32(-global3.d.c.x), _wgslsmith_f_op_f32(522f * global3.d.c.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global3.d.c.wxy + global3.d.c.xwz))))) + global3.d.c.yyy));
    let var_3 = u_input.b.zz;
    return global3.d.e.x;
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    global2 = -629f;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-1722f, 0u, false, -1773f))))), vec3<f32>(1461f, global3.d.c.x, -2275f)), global3.d.c.wxy);
    global2 = global3.d.c.x;
    let var_1 = vec3<bool>(all(vec4<bool>(func_3(arg_0.x), global3.d.e.x, arg_0.x, global3.d.a.x)) || all(vec4<bool>(false, func_3(true), !arg_0.x, true)), func_3(arg_0.x), global3.d.e.x);
    global2 = _wgslsmith_div_f32(global3.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.c.x + -1050f) - _wgslsmith_f_op_f32(-var_0.x))))));
    return firstTrailingBit(vec3<u32>(~(~(~u_input.c.x)), u_input.a, _wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(37847u, 19432u)) << ((~u_input.c.x << (_wgslsmith_sub_u32(global3.d.b, u_input.d) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2349u;
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(func_1(vec2<bool>(global3.d.a.x, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, var_0, 21190u), vec3<u32>(global3.c, 54703u, 0u)), vec3<u32>(u_input.c.x, global3.d.d, 4294967295u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_0), ~vec3<u32>(var_0, global3.d.b, u_input.c.x)) % vec3<u32>(32u)), abs(vec3<u32>(global3.d.d, 1u, u_input.c.x) | vec3<u32>(var_0, 22681u, 0u)) >> (vec3<u32>(0u, global3.c << (37166u % 32u), ~global3.d.d) % vec3<u32>(32u))), 2u)], vec4<i32>(~(i32(-1i) * -1i), select(~(-19621i & global3.b.x), _wgslsmith_div_i32(global4.x, -8861i), global3.d.e.x), global4.x, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global4.x, global4.x, 2147483647i), -u_input.b), abs(countOneBits(u_input.b.x)))), 1u, Struct_1(select(global3.d.e.xx, select(!vec2<bool>(true, global3.d.e.x), !vec2<bool>(global3.d.e.x, true), global3.d.e.xx), select(global3.d.e.zz, global3.d.e.xx, vec2<bool>(true, true))), ~(~firstLeadingBit(global3.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-865f, 499f, 840f, global3.d.c.x)) * vec4<f32>(global3.d.c.x, global3.d.c.x, global3.d.c.x, global3.d.c.x))), var_0, global3.d.e));
    global3 = Struct_4(_wgslsmith_sub_i32(1i, 49259i), global3.b, min(~(~4294967295u), 0u) & (u_input.d & ~u_input.d), Struct_1(select(var_1.d.e.zz, !vec2<bool>(global3.d.a.x, true), 0i < _wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(u_input.b.x, 1i))), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global3.d.c, var_1.d.c)))), 1u, var_1.d.e));
    let var_2 = ~1i;
    var var_3 = true;
    let var_4 = !all(vec2<bool>(var_1.d.e.x, select(true, global3.d.e.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_mult_i32(min(global4.x, 2147483647i), max(global4.x, var_2)), -1460i));
}

