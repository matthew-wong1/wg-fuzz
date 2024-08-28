struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<vec3<f32>, 10>;

var<private> global4: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    var var_0 = Struct_2(!(!(global1.d.x | global1.d.x) || global1.d.x), global2[_wgslsmith_index_u32(u_input.e, 27u)]);
    var_0 = Struct_2(any(select(!(!global1.d.zw), select(var_0.b.d.xz, select(global1.d.ww, global1.d.ww, var_0.b.d.wx), vec2<bool>(global1.d.x, global1.d.x)), vec2<bool>(true, all(global1.d)))), var_0.b);
    let var_1 = var_0.b;
    global4 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2031f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(409f, 1502f) * vec2<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 471f)))));
    global2 = array<Struct_1, 27>();
    return !(!(!select(var_1.d.x | global1.d.x, true, true)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(912f + -418f);
    global0 = all(vec3<bool>(true, false, global1.d.x));
    global0 = func_2();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(-global1.a.x)) <= 1329f, global2[_wgslsmith_index_u32(1u, 27u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(136f, 162f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-367f, 806f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1912f) - _wgslsmith_f_op_f32(select(389f, _wgslsmith_div_f32(-924f, global1.c.x), false && global1.d.x))))));
    return Struct_2(!global1.d.x, var_1.b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global3 = array<vec3<f32>, 10>();
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(65182u >> (_wgslsmith_add_u32(47557u, u_input.c) % 32u), countOneBits(~(4294967295u >> (0u % 32u))), firstTrailingBit(min(~u_input.e, u_input.b.x >> (38664u % 32u)))), ~u_input.e << (~(~u_input.c) % 32u));
    let var_1 = arg_1.d.x;
    var var_2 = !select(global1.d.wyz, select(select(vec3<bool>(true, false, true), func_1(1880f).b.d.zwy, var_0.x != u_input.a.x), vec3<bool>(!var_1, !arg_0, true), global1.d.x), all(arg_1.d.zx));
    let var_3 = _wgslsmith_div_u32(1u, ~max(2046u, firstTrailingBit(select(u_input.c, 108795u, true))));
    return 64630u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(268f)));
    var var_1 = var_0;
    var var_2 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global4.x)))));
    var var_3 = -firstTrailingBit(min(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(1i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)), ~vec3<i32>(u_input.d, u_input.d, u_input.d)), (vec3<i32>(13338i, 2147483647i, -1i) & vec3<i32>(u_input.d, u_input.d, 27547i)) >> (~u_input.a % vec3<u32>(32u))));
    global3 = array<vec3<f32>, 10>();
    let var_4 = ~var_3.x << (0u % 32u);
    let var_5 = ~var_4;
    let var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * func_1(var_0.b.a.x).b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-var_1.b.b), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-259f, _wgslsmith_f_op_f32(-var_1.b.b), !global1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1786f)) + vec4<f32>(-793f, -342f, 1165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.a.x + -269f), _wgslsmith_f_op_f32(global1.a.x - global1.a.x))) + _wgslsmith_div_f32(var_2.b.b, _wgslsmith_f_op_f32(global4.x + var_1.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.c, 1u), func_3(var_0.b.d.x, func_1(global1.c.x).b)), 61718u, 1u, ~0u), u_input.b.zxx, var_1.b.a.x);
}

