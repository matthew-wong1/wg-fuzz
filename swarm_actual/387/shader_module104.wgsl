struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(true, vec2<f32>(-1000f, 1363f));

var<private> global3: Struct_3 = Struct_3(Struct_1(false, vec2<f32>(1512f, -271f)), vec3<f32>(-487f, 1000f, -1495f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = global0.c.x;
    return global3.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<f32> {
    var var_0 = ~1u;
    var var_1 = !global1.a.xz;
    var var_2 = Struct_3(global3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1045f, -2554f, -1586f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(645f, global2.b.x, 458f), vec3<f32>(534f, 1186f, 1447f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, arg_0.b.x, arg_0.b.x) + global3.b))))));
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec2_f32(global3.b.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.b, var_2.b.xy))));
    global1 = Struct_2(global1.a, global1.b, reverseBits(global1.c) << ((countOneBits(vec2<u32>(35612u, 13051u)) & abs(global1.c)) % vec2<u32>(32u)), false);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x + var_2.a.b.x), _wgslsmith_f_op_f32(abs(var_2.b.x))), -671f, global3.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1881f, 206f, var_2.b.x)) + _wgslsmith_f_op_vec3_f32(abs(global3.b))))));
}

fn func_1(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = global3.a;
    global3 = Struct_3(func_2(-33939i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global3.a, false)))));
    let var_1 = Struct_2(!global0.a, vec4<i32>(global1.b.x, u_input.b, firstTrailingBit(min(-1i, u_input.b)), ~(~u_input.b)) << (_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.x, 0u, global1.c.x, global0.c.x), vec4<u32>(global0.c.x, global0.c.x, 0u, 62557u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, arg_0, 1u), abs(19586u), 55911u, 58579u), ~vec4<u32>(4294967295u, arg_0, 4294967295u, global0.c.x)) % vec4<u32>(32u)), ~(~min(abs(global1.c), vec2<u32>(1u, 0u))), false);
    var var_2 = global1.b.x | (i32(-1i) * -global1.b.x);
    let var_3 = min(~u_input.a, ~select(~26719u, ~_wgslsmith_mult_u32(0u, 4294967295u), !func_2(9454i).a));
    return all(var_1.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    global0 = Struct_2(select(vec3<bool>(~1u == (1u & global0.c.x), true | func_1(u_input.a, 1000f), true), select(!select(vec3<bool>(global2.a, global3.a.a, false), vec3<bool>(var_0.a, global0.a.x, var_0.a), global1.a), !global0.a, vec3<bool>(any(global1.a.xx), all(vec2<bool>(false, true)), false)), false), global1.b, global0.c, true);
    let var_1 = Struct_2(!select(vec3<bool>(global0.d, u_input.a != 37338u, true), !select(vec3<bool>(false, true, global1.a.x), vec3<bool>(false, false, var_0.a), vec3<bool>(false, false, true)), !(!global1.a)), -vec4<i32>(1i, global0.b.x, abs(~u_input.b), 14048i), vec2<u32>(~(~firstLeadingBit(u_input.a)), 1u), true);
    let var_2 = func_2(abs(~(-firstTrailingBit(u_input.b))));
    var var_3 = countOneBits(global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c | vec2<u32>(~global0.c.x, _wgslsmith_div_u32(global1.c.x, global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -117f)), vec3<f32>(global3.a.b.x, 597f, func_2(~(-2147483647i)).b.x), u_input.b);
}

