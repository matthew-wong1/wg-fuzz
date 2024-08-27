struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_4,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = true;
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(-250f)), 1000f);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 713f, 917f);
    var var_1 = _wgslsmith_dot_vec4_u32(~u_input.a >> (~select(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(24313u, 61366u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 2686u, u_input.a.x, u_input.a.x)), !vec4<bool>(var_0, var_0, true, false)) % vec4<u32>(32u)), u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.zx - vec2<f32>(-3044f, -1257f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.zx - global0.zz)))))), Struct_1(firstTrailingBit(_wgslsmith_mult_i32(-42869i, 7975i)), abs(1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(229f, -1370f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, 1901f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -182f, global0.x, 1510f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197f, global0.x, -626f, -724f)))), u_input.a.yw, ~abs(abs(u_input.a.x << (u_input.a.x % 32u))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1497f))));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 693f) - _wgslsmith_f_op_f32(-1770f + arg_1.b.d)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-653f - var_0), global0.x))));
    let var_1 = select(u_input.a.x >= 28904u, arg_0, true);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-arg_1.c.d)) - _wgslsmith_f_op_f32(f32(-1f) * -2389f)), global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1858f)) * global0.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.d, 688f, var_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1324f, 145f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(611f, -215f, -1000f), vec3<f32>(arg_1.c.d, global0.x, arg_1.c.d)))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, _wgslsmith_div_f32(435f, _wgslsmith_f_op_f32(sign(arg_1.c.d))), arg_1.c.d));
    return select(select(arg_1.b.c, select(vec4<bool>(false, true, arg_0 && arg_1.b.c.x, true), select(arg_1.b.c, arg_1.c.c, var_1), any(arg_1.b.c.zx)), !select(!vec4<bool>(true, false, arg_1.b.b, true), arg_1.b.c, true)), arg_1.c.c, arg_0);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = vec3<bool>(select(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))) & true, true, any(vec3<bool>(true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(true, Struct_5(-1i, Struct_4(-1i, true, vec4<bool>(true, false, false, true), 1314f), Struct_4(-19717i, false, vec4<bool>(true, true, false, false), global0.x), u_input.a.x, true), 19830i))) && (true && (any(vec4<bool>(true, false, true, false)) & (global0.x < global0.x))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f - 1168f)) == _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -1838f))));
    var var_1 = (all(vec2<bool>(any(vec2<bool>(true, var_0.x)), any(var_0.yy))) || (true | var_0.x)) == false;
    let var_2 = Struct_5(i32(-1i) * -1i, Struct_4(~(-1i), !(true | any(vec3<bool>(true, true, false))), func_2(any(!var_0.zx), Struct_5(_wgslsmith_sub_i32(-23414i, -2147483647i), Struct_4(-11955i, true, vec4<bool>(var_0.x, false, true, false), global0.x), Struct_4(0i, var_0.x, vec4<bool>(var_0.x, true, true, var_0.x), 358f), abs(arg_0), select(var_0.x, false, var_0.x)), abs(-31204i)), global0.x), Struct_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(~11721i, _wgslsmith_div_i32(-1i, -2147483647i)), 0i), any(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x))), select(vec4<bool>(any(var_0.xz), true, 485f <= global0.x, !var_0.x), vec4<bool>(var_0.x, select(var_0.x, false, true), true, true), any(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -2988f)))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~firstLeadingBit(84555u), ~43664u << ((u_input.a.x ^ 154u) % 32u)), arg_0), any(func_2(var_0.x, Struct_5(0i, Struct_4(28285i, false, vec4<bool>(false, false, true, false), -147f), Struct_4(0i, var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, true), global0.x), 64600u, var_0.x), countOneBits(0i)).yw) || true);
    global0 = vec3<f32>(global0.x, -377f, _wgslsmith_f_op_f32(-var_2.b.d));
    var_1 = true;
    return 1080f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(0u)), global0.x, _wgslsmith_f_op_f32(913f - global0.x)) - vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(413f + global0.x), _wgslsmith_f_op_f32(1000f * global0.x), 1f)))));
    let var_0 = !(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -23809i, -27139i), vec3<i32>(1i, 1i, 1i)) != ~(-16642i));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 587f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1434f)))));
    var var_1 = Struct_1(19887i, _wgslsmith_dot_vec2_u32(~reverseBits(u_input.a.wy) | (select(u_input.a.zw, u_input.a.zw, false) | reverseBits(u_input.a.zz)), u_input.a.xy), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(653f, global0.x)), -1748f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, global0.x, global0.x, 1000f)), vec4<f32>(-188f, global0.x, 984f, -1881f)) + vec4<f32>(-615f, 691f, -263f, _wgslsmith_f_op_f32(global0.x * 440f))))));
    let var_2 = vec2<i32>(abs(63474i), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -32947i, var_2.x), ~vec3<i32>(var_1.a, 19541i, 1i)), var_1.a), u_input.a.wyx, (vec4<i32>(var_2.x, var_2.x, ~(-1i), abs(-2147483647i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_1.a, var_1.a, 1i), vec4<i32>(var_1.a, 18996i, var_1.a, 0i))) ^ firstLeadingBit(vec4<i32>(-6655i, _wgslsmith_dot_vec4_i32(vec4<i32>(-16003i, 0i, var_2.x, var_1.a), vec4<i32>(-11276i, 2147483647i, -2147483647i, var_2.x)), _wgslsmith_mod_i32(-4629i, -51091i), i32(-1i) * -2147483647i)));
}

