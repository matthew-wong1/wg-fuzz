struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(25388u, 13267u, 72910u, 0u, 0u, 20057u, 3118u, 1u, 12263u, 0u, 1u, 52020u, 1u, 1u, 24100u, 0u, 4294967295u, 44292u, 27270u, 46685u, 2065u, 1u, 36528u, 49876u, 38362u);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<Struct_2, 29>;

var<private> global3: Struct_2;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> bool {
    global2 = array<Struct_2, 29>();
    var var_0 = vec2<bool>(all(!(!(!vec2<bool>(global4.x, global4.x)))), all(vec4<bool>(true, global4.x, global4.x, true)));
    global3 = global2[_wgslsmith_index_u32(~12065u, 29u)];
    global2 = array<Struct_2, 29>();
    global4 = vec4<bool>(false, false, arg_0 <= _wgslsmith_f_op_f32(-151f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(348f, 1000f)))), !(select(arg_0 <= arg_0, !var_0.x, true) == any(global4.xzz)));
    return all(vec2<bool>(any(vec4<bool>(var_0.x, arg_1.x, global4.x, var_0.x)), all(!vec4<bool>(var_0.x, true, arg_1.x, arg_1.x)))) | arg_1.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.d.a.x);
    let var_1 = arg_0;
    global3 = Struct_2(vec3<i32>(i32(-1i) * -62496i, ~_wgslsmith_mult_i32(-2147483647i | u_input.b, 24083i), var_1.d.e), var_1.b.b);
    let var_2 = !(max(0u, ~(~44616u)) < arg_0.c.x);
    global4 = vec4<bool>(var_1.e, var_1.e || any(vec2<bool>(func_3(arg_1.x, vec2<bool>(true, true)), var_2)), arg_0.e, any(global4.xxx));
    return _wgslsmith_div_f32(var_1.d.a.x, -780f);
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = select(true == global4.x, true, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1297f, 1000f, 901f, -327f) - vec4<f32>(-247f, 1027f, 278f, -1081f))))) * vec4<f32>(global3.b.a.x, _wgslsmith_f_op_f32(global3.b.a.x - _wgslsmith_f_op_f32(floor(global3.b.a.x))), 226f, _wgslsmith_div_f32(global3.b.a.x, -339f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(4294967295u, Struct_2(vec3<i32>(2147483647i, 1i, u_input.a.x), global3.b), global3.b.c.wxx, global3.b, true), vec3<f32>(558f, 2503f, global3.b.a.x)))), _wgslsmith_div_f32(-769f, -808f), 335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.a.x))))));
    let var_2 = reverseBits(vec3<i32>(~23079i, u_input.b, -1i));
    var var_3 = 9867u;
    var var_4 = Struct_2(~var_2, Struct_1(vec2<f32>(global3.b.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), global3.b.a.x))), ~4294967295u, global3.b.c, global3.b.d, u_input.a.x));
    return ~global0[_wgslsmith_index_u32(var_4.b.d.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(select(!global4.yxz, select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(false, false, global4.x), global4.x), true)) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.b.a.x)) * 752f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-161f * global3.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1634f))), true, select(true, !all(global4.xzz), true));
    var var_1 = Struct_1(vec2<f32>(global3.b.a.x, -132f), ~func_1(113802u), global3.b.c << (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.c.x, 22702u, u_input.d)), vec4<u32>(countOneBits(1u), 81952u, ~global3.b.d.x, _wgslsmith_add_u32(26649u, u_input.d))) % vec4<u32>(32u)), firstTrailingBit(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 18971u), u_input.c))) ^ vec2<u32>(~17290u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(global3.b.b, global3.b.d.x), 0u << (global3.b.d.x % 32u), abs(33577u))), 0i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 382f)), global3.b.a)) * vec2<f32>(_wgslsmith_f_op_f32(807f + 1235f), _wgslsmith_f_op_f32(-596f - 1002f))) - global3.b.a), global0[_wgslsmith_index_u32(countOneBits(0u), 25u)], ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 46978u, 19080u), global3.b.c))), global3.b.c.zx, -_wgslsmith_mult_i32(-(global3.b.e >> (var_1.b % 32u)), _wgslsmith_div_i32(global3.a.x, ~(-2147483647i))));
    var_2 = global3.b;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, 940f))) - -1882f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a.x))));
    let var_4 = ~var_2.c.xz;
    var_0 = vec3<bool>(var_1.e < abs(1408i), !any(!vec2<bool>(global4.x, global4.x)), all(vec4<bool>(true, true, true, true)));
    let var_5 = _wgslsmith_sub_i32(i32(-1i) * -12469i, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~abs(vec4<u32>(0u, 4294967295u, 1u, var_2.d.x))), _wgslsmith_f_op_f32(-var_2.a.x));
}

