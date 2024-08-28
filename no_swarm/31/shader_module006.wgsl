struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(703f, 1154f, 672f), vec4<f32>(-264f, 396f, 1159f, -820f), Struct_2(vec2<bool>(true, true), vec2<f32>(-243f, -1590f), vec3<f32>(109f, 1000f, 895f)));

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: Struct_4;

var<private> global4: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(0u, 100205u, 20745u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a)) * vec3<f32>(arg_0.b, arg_0.b, -422f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-403f, global0.b.x, global3.a.b))) + global0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global0.b, _wgslsmith_div_vec4_f32(global0.b, global0.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(746f, global0.a.x, 777f, 1468f) - _wgslsmith_f_op_vec4_f32(min(global0.b, global0.b))))), global0.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-386f * _wgslsmith_f_op_f32(round(arg_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1415f * global0.a.x), global0.c.b.x)), global3.a.b, -1280f)));
    var var_1 = Struct_4(Struct_1(select(global3.a.a, global3.a.a, vec4<bool>(arg_0.a.x || global0.c.a.x, true, global0.c.a.x, global3.d.x)), -855f), (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 3438u, global3.c)), ~global4[_wgslsmith_index_u32(global3.c, 1u)]) != global3.c) | !(global3.c >= (global3.e ^ 4294967295u)), ~global3.c << (min(~global3.e | global3.e, 1u) % 32u), vec3<bool>(any(vec2<bool>(global3.a.a.x, arg_1.x)), !select(!global3.d.x, !arg_1.x, true), all(vec4<bool>(select(false, true, arg_0.a.x), arg_0.a.x, any(global3.d), global3.b))), 4294967295u);
    global2 = arg_0.a.x;
    let var_2 = true;
    return _wgslsmith_f_op_f32(743f - _wgslsmith_f_op_f32(-var_1.a.b));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)), -330f), global0.a.x, 1000f) + vec3<f32>(global3.a.b, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, global0.c.a.x, false, false), global3.a.b), select(vec3<bool>(true, global0.c.a.x, global3.b), vec3<bool>(false, global3.b, false), vec3<bool>(arg_0, global3.b, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b * global0.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.b))), Struct_2(!select(vec2<bool>(true, false), vec2<bool>(global0.c.a.x, true), select(global0.c.a.x, arg_0, true)), global0.b.wz, global0.a));
    var var_1 = Struct_3(global0.c.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, global0.c.a.x, true, true), 120f), global3.a.a.xzw)), -840f, _wgslsmith_f_op_f32(var_0.b.x - var_0.a.x), global3.a.b), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f + 518f)), global0.b.x, _wgslsmith_f_op_f32(-global3.a.b)))), Struct_2(vec2<bool>(max(global3.e, 11254u) >= (2639u >> (1u % 32u)), global3.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.b), vec2<f32>(-1414f, global0.b.x), !var_0.c.a.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1192f * var_0.a.x))), _wgslsmith_div_f32(-1494f, _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    var_1 = var_0;
    let var_2 = !(global0.c.a.x && (_wgslsmith_div_u32(1u, ~0u) < ~(104692u >> (global3.e % 32u))));
    global3 = Struct_4(global3.a, global3.e > ~_wgslsmith_dot_vec3_u32(vec3<u32>(3071u, global3.c, global3.e), select(global4[_wgslsmith_index_u32(0u, 1u)], vec3<u32>(1u, 23743u, global3.c), var_2)), reverseBits(4294967295u), vec3<bool>(true, !global3.b, global3.a.a.x), global3.c);
    return ~global3.e;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(Struct_1(global3.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), any(!vec2<bool>(true, !global3.d.x)), 51431u, vec3<bool>(all(vec2<bool>(true, true)), all(global3.a.a.xy), true), 35794u);
    let var_1 = vec3<u32>(16072u, global3.c, ~(func_2(!global3.a.a.x) >> (~global3.e % 32u)));
    let var_2 = Struct_3(global0.b.xxy, global0.b, Struct_2(!select(!global0.c.a, global0.c.a, select(vec2<bool>(false, var_0.d.x), vec2<bool>(global3.a.a.x, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(exp2(global0.b.wy)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1829f, -1088f, 655f) + _wgslsmith_f_op_vec3_f32(-global0.c.c))))));
    var var_3 = var_0;
    let var_4 = ~reverseBits(~vec4<i32>(38414i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(17263i, u_input.a.x, u_input.a.x)), u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)));
    return Struct_4(global3.a, true, var_0.e, vec3<bool>(!all(var_0.a.a.zww), true, true != any(select(global3.a.a.wxy, vec3<bool>(false, false, var_0.d.x), false))), ~28605u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.b), global3.a.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-1000f - -857f))))))));
    global3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~4294967295u, global3.e) << ((~(1u | global3.e) ^ 0u) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.b.yyz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global0.b.yz)))) + _wgslsmith_f_op_vec2_f32(floor(global0.a.zx)))), -_wgslsmith_add_vec4_i32(abs(countOneBits(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, -30348i))), ~(~vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))), abs(~vec4<i32>(-u_input.a.x, 9126i, -54711i, i32(-1i) * -1i)));
}

