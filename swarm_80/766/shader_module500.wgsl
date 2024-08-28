struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 26>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_3)), global2.b.x, any(!arg_0.zwz))), _wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.b.ww)) * vec2<f32>(global2.b.x, global2.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.b.yz, vec2<f32>(arg_2, arg_2))) * global2.b.xw))));
    global1 = array<Struct_2, 26>();
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-70938i, i32(-1i) * -52287i, 62940i), reverseBits((u_input.c >> (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u))) & ~u_input.c), -vec3<i32>(44765i, ~u_input.c.x, u_input.a.x)), firstLeadingBit(u_input.c));
    global1 = array<Struct_2, 26>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(global2.b.x, 492f, arg_3, arg_3)))) + global2.b), global2.c, global2.d), -vec2<i32>(15087i, u_input.c.x), ~arg_1);
    return arg_1;
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    global0 = arg_0.a.b.yz;
    var var_0 = min(global2.c.x, ~func_3(vec4<bool>(true, true, true, true), min(global2.c.x, 15090u), 993f, global0.x) | (~59504u & global2.d.x));
    var_0 = 1u;
    global2 = arg_0.a;
    global1 = array<Struct_2, 26>();
    return vec4<f32>(-869f, arg_0.a.b.x, -1050f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.b.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2.b.x, arg_2.c.b.x, arg_2.b.b.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(arg_1.x, 26u)])), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global2.b.x, -1000f, global2.b.x), arg_2.c.b), !vec4<bool>(false, arg_2.d, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global0.x, 1675f, arg_2.a.x)) - _wgslsmith_div_vec4_f32(arg_2.b.b, vec4<f32>(-445f, 266f, -1045f, -2175f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_2.b.b))))));
    let var_1 = -1i;
    var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 26u)];
    var_0 = vec4<f32>(var_0.x, -2110f, 213f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(1271f + arg_2.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-373f + _wgslsmith_f_op_f32(trunc(-825f))))));
    global0 = var_2.a.b.xw;
    return vec3<f32>(246f, global2.b.x, _wgslsmith_f_op_f32(sign(993f)));
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-181f, _wgslsmith_f_op_f32(trunc(arg_0.a.x))), global0.x)), -1699f);
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1536f, -1522f, global0.x))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.b.wxy)))), _wgslsmith_f_op_vec3_f32(-global2.b.wxw), select(vec3<bool>(arg_0.d != true, arg_0.d & false, arg_0.d), vec3<bool>(!arg_0.d, !arg_0.d, true), arg_0.d))), Struct_1(1u | _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.c.c.x, u_input.b.x), ~u_input.b.x), _wgslsmith_f_op_vec4_f32(abs(global2.b)), _wgslsmith_mod_vec2_u32(~abs(u_input.b), ~vec2<u32>(1u, 78886u)), select(global2.d, countOneBits(arg_0.c.d), vec4<bool>(false, arg_0.d, true, arg_0.d))), Struct_1(~115022u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-288f, global0.x, arg_0.c.b.x, global0.x) - global2.b)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(515f, arg_0.b.b.x, 314f, -1283f), _wgslsmith_f_op_vec4_f32(max(arg_0.b.b, vec4<f32>(global2.b.x, arg_0.c.b.x, -228f, arg_0.b.b.x)))))), firstLeadingBit(reverseBits(vec2<u32>(arg_0.b.c.x, 2400u) & global2.d.zz)), firstTrailingBit(arg_0.b.d)), all(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d)), 1u);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(832f)), var_0.a.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, global2.b.x)))));
    global1 = array<Struct_2, 26>();
    global2 = arg_0.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.b.yx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.b.b.yw, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, -1446f), arg_0.b.b.zz)))) + global2.b.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(select(global2.b.yyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.wzx) + _wgslsmith_f_op_vec3_f32(func_1(u_input.a, global2.d.wwx, Struct_3(vec3<f32>(1635f, global2.b.x, global2.b.x), Struct_1(global2.d.x, global2.b, u_input.b, vec4<u32>(3361u, global2.a, u_input.b.x, u_input.b.x)), Struct_1(u_input.b.x, global2.b, vec2<u32>(23054u, 1u), vec4<u32>(u_input.b.x, global2.d.x, global2.d.x, 18967u)), true, global2.d.x), global2.c.x))), select(true, true, -1i >= u_input.a.x))), Struct_1(~1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global0.x, -1668f, -480f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, -1474f, -1693f, global0.x), global2.b, vec4<bool>(true, true, false, true)))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, 114510u)), firstLeadingBit(vec2<u32>(4294967295u, u_input.b.x))), ~(~global2.d)), Struct_1(abs(4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), global2.c, countOneBits(select(global2.d, vec4<u32>(22494u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(false, true, false, false)))), !select(true, false, all(vec2<bool>(true, false))), u_input.b.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x & 0i), ~(~u_input.a)), vec3<u32>(13004u & global2.d.x, firstTrailingBit(u_input.b.x), u_input.b.x) >> (global2.d.wzz % vec3<u32>(32u)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global2.b.x + 231f), -1180f, _wgslsmith_f_op_f32(global0.x * global2.b.x)), Struct_1(u_input.b.x, global2.b, vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_u32(global2.d, vec4<u32>(global2.d.x, global2.a, u_input.b.x, 56927u))), Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(650f, 275f, global2.b.x, global2.b.x) + vec4<f32>(global0.x, global2.b.x, -438f, -342f)), vec2<u32>(global2.c.x, 5718u), global2.d ^ vec4<u32>(77203u, 4294967295u, global2.a, global2.c.x)), !select(true, true, false), global2.c.x), max(1u, 25995u))).xx);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b.x, -2449f)))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-340f)), 1f));
}

