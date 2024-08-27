struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-50769i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(14670i, -14146i), vec2<i32>(53016i, i32(-2147483648)), vec2<i32>(-1i, -27878i), vec2<i32>(0i, 6921i));

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<bool>, 8>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(4294967295u, 61386u), 863f, -1051f), Struct_1(vec2<u32>(17154u, 4294967295u), -460f, 965f), Struct_1(vec2<u32>(0u, 5097u), 163f, 416f), Struct_1(vec2<u32>(0u, 4294967295u), -1519f, -849f), Struct_1(vec2<u32>(43722u, 32908u), -282f, 973f), Struct_1(vec2<u32>(4294967295u, 0u), -1440f, -527f), Struct_1(vec2<u32>(12667u, 35442u), -271f, -155f), Struct_1(vec2<u32>(14308u, 28757u), 1066f, 535f), Struct_1(vec2<u32>(0u, 1u), 1795f, 1435f), Struct_1(vec2<u32>(91719u, 3679u), 483f, 525f), Struct_1(vec2<u32>(13471u, 43832u), 785f, -394f), Struct_1(vec2<u32>(0u, 0u), -312f, 931f), Struct_1(vec2<u32>(4294967295u, 0u), 1396f, -1727f), Struct_1(vec2<u32>(7187u, 1u), -513f, -228f), Struct_1(vec2<u32>(4294967295u, 0u), -965f, -1327f), Struct_1(vec2<u32>(0u, 38689u), -1341f, 1168f), Struct_1(vec2<u32>(1u, 851u), -786f, 1000f), Struct_1(vec2<u32>(39410u, 4294967295u), -1624f, -356f), Struct_1(vec2<u32>(50552u, 1u), 503f, 489f), Struct_1(vec2<u32>(1u, 64649u), 1311f, -712f), Struct_1(vec2<u32>(9151u, 53729u), -553f, 1532f), Struct_1(vec2<u32>(2774u, 1u), -2016f, 999f), Struct_1(vec2<u32>(76291u, 4294967295u), 555f, 1833f), Struct_1(vec2<u32>(86867u, 1u), 1505f, -1715f), Struct_1(vec2<u32>(4294967295u, 8666u), -1146f, 142f), Struct_1(vec2<u32>(1u, 0u), -314f, -238f), Struct_1(vec2<u32>(4294967295u, 31375u), -274f, -1166f), Struct_1(vec2<u32>(45010u, 30123u), 1239f, 1069f), Struct_1(vec2<u32>(1u, 0u), -1475f, 1000f), Struct_1(vec2<u32>(0u, 36283u), -748f, 1229f), Struct_1(vec2<u32>(47860u, 22300u), -348f, 100f), Struct_1(vec2<u32>(1u, 39804u), -440f, -345f));

var<private> global4: array<f32, 5> = array<f32, 5>(-557f, 1276f, 132f, 419f, -345f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global2 = array<vec3<bool>, 8>();
    global2 = array<vec3<bool>, 8>();
    return arg_2.a.x;
}

fn func_1() -> u32 {
    let var_0 = u_input.c;
    global4 = array<f32, 5>();
    var var_1 = ~func_2(u_input.b, ~(-var_0.x), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), global4[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(23508u & u_input.b.x, 5u)] * _wgslsmith_f_op_f32(1118f - 2033f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f * -199f)) * global4[_wgslsmith_index_u32(abs(0u), 5u)]));
    let var_2 = var_0.zx;
    var var_3 = var_2.x;
    return u_input.b.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(57167u, 28420u), 5u)], true)))));
    var var_1 = u_input.c & vec4<i32>(-reverseBits(u_input.c.x >> (arg_0.x % 32u)), ~5386i, 42266i, -abs(u_input.a.x));
    global2 = array<vec3<bool>, 8>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(countOneBits(_wgslsmith_add_u32(arg_0.x, 0u))), ~_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 33935u), u_input.b.ywx)), 22259u), 32u)];
    let var_3 = 1u;
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 8>();
    let var_0 = Struct_1(~(~u_input.b.yz), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 30116u)) << (firstTrailingBit(1u) % 32u), 5u)]), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x & ~(~19910u), func_1(), func_3(vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(1257f))))), 5u)]);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 5u)], var_0.c))), vec2<f32>(-1000f, 285f), global4[_wgslsmith_index_u32(6339u, 5u)] >= var_0.b)) - vec2<f32>(1452f, 1023f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.c) * vec2<f32>(949f, -1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], -1000f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2188f, 343f), vec2<f32>(-535f, global4[_wgslsmith_index_u32(var_0.a.x, 5u)])))))));
    var var_3 = 72559u;
    let x = u_input.a;
    s_output = StorageBuffer(-888f, ~(~_wgslsmith_sub_vec3_i32(u_input.c.zzx, u_input.c.zww)) & _wgslsmith_add_vec3_i32(u_input.c.zww, u_input.c.ywy), u_input.b, max(_wgslsmith_sub_vec2_u32(~max(var_0.a, var_0.a), ~(vec2<u32>(30507u, u_input.b.x) | vec2<u32>(var_0.a.x, 1u))), firstLeadingBit(_wgslsmith_add_vec2_u32(var_0.a, select(vec2<u32>(4294967295u, 798u), vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(global1.x, var_1))))));
}

