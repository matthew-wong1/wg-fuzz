struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(false, true, false), -1216f, vec4<u32>(24030u, 1u, 4294967295u, 1u)), Struct_1(vec3<bool>(true, true, false), -1524f, vec4<u32>(4294967295u, 1u, 73623u, 0u)), Struct_1(vec3<bool>(true, true, false), 1265f, vec4<u32>(83637u, 20878u, 47281u, 0u)), Struct_1(vec3<bool>(true, false, true), -1262f, vec4<u32>(37224u, 31295u, 11084u, 0u)), Struct_1(vec3<bool>(false, false, true), -1191f, vec4<u32>(4294967295u, 0u, 36100u, 1u)), Struct_1(vec3<bool>(false, true, false), 283f, vec4<u32>(4294967295u, 1u, 0u, 0u)), Struct_1(vec3<bool>(false, false, false), -315f, vec4<u32>(0u, 1u, 26877u, 0u)), Struct_1(vec3<bool>(true, false, true), 486f, vec4<u32>(12195u, 23735u, 9490u, 57733u)), Struct_1(vec3<bool>(false, false, false), 2528f, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), 1000f, vec4<u32>(0u, 29678u, 0u, 13279u)), Struct_1(vec3<bool>(false, false, false), -517f, vec4<u32>(1u, 33635u, 4271u, 79988u)), Struct_1(vec3<bool>(false, true, true), 876f, vec4<u32>(67312u, 47467u, 14676u, 58306u)), Struct_1(vec3<bool>(true, false, false), 448f, vec4<u32>(1u, 4294967295u, 22644u, 51900u)), Struct_1(vec3<bool>(true, true, false), -543f, vec4<u32>(42774u, 144636u, 41001u, 27363u)), Struct_1(vec3<bool>(false, false, false), -1883f, vec4<u32>(4294967295u, 49423u, 0u, 1u)), Struct_1(vec3<bool>(false, false, true), 616f, vec4<u32>(4294967295u, 24851u, 4294967295u, 0u)), Struct_1(vec3<bool>(true, false, false), 155f, vec4<u32>(90982u, 3314u, 10696u, 40678u)), Struct_1(vec3<bool>(false, true, false), 1565f, vec4<u32>(4294967295u, 4294967295u, 73485u, 0u)), Struct_1(vec3<bool>(true, true, true), 542f, vec4<u32>(85610u, 213u, 11817u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), 1771f, vec4<u32>(1u, 4294967295u, 22080u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), 851f, vec4<u32>(38569u, 1u, 78335u, 1u)), Struct_1(vec3<bool>(false, true, false), 1112f, vec4<u32>(4294967295u, 6584u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, false, true), 2428f, vec4<u32>(81466u, 0u, 6742u, 0u)), Struct_1(vec3<bool>(true, false, true), 560f, vec4<u32>(1u, 1u, 0u, 1u)), Struct_1(vec3<bool>(false, false, false), -424f, vec4<u32>(0u, 4294967295u, 4294967295u, 121531u)), Struct_1(vec3<bool>(true, false, false), -1073f, vec4<u32>(4294967295u, 0u, 4294967295u, 1u)));

var<private> global1: f32;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<bool>(false, false, false), 645f, vec4<u32>(4294967295u, 1u, 63624u, 35779u)), Struct_1(vec3<bool>(true, true, true), -1259f, vec4<u32>(0u, 7127u, 1u, 1u)), Struct_1(vec3<bool>(true, false, false), 606f, vec4<u32>(4294967295u, 13194u, 0u, 1u)), Struct_1(vec3<bool>(true, true, true), -1494f, vec4<u32>(1u, 42398u, 0u, 97390u)), Struct_1(vec3<bool>(false, false, false), 1000f, vec4<u32>(41489u, 0u, 4294967295u, 1u)), Struct_1(vec3<bool>(true, true, true), 203f, vec4<u32>(1u, 1u, 1u, 8362u)), Struct_1(vec3<bool>(true, true, true), 686f, vec4<u32>(72053u, 1u, 4294967295u, 0u)), Struct_1(vec3<bool>(true, false, true), -733f, vec4<u32>(51869u, 33870u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), 2451f, vec4<u32>(1u, 4294967295u, 31351u, 22885u)), Struct_1(vec3<bool>(true, true, true), -2364f, vec4<u32>(1u, 22806u, 4294967295u, 1u)), Struct_1(vec3<bool>(false, false, false), -2087f, vec4<u32>(24448u, 1u, 1u, 4294967295u)), Struct_1(vec3<bool>(false, true, true), 1216f, vec4<u32>(52087u, 4294967295u, 1u, 4294967295u)), Struct_1(vec3<bool>(true, true, false), 657f, vec4<u32>(20013u, 10781u, 1u, 12794u)), Struct_1(vec3<bool>(false, true, true), -269f, vec4<u32>(1u, 27374u, 1u, 0u)), Struct_1(vec3<bool>(true, true, true), -638f, vec4<u32>(52324u, 0u, 4294967295u, 9271u)), Struct_1(vec3<bool>(false, true, false), -912f, vec4<u32>(4294967295u, 921u, 1u, 0u)), Struct_1(vec3<bool>(true, true, true), -1584f, vec4<u32>(1u, 0u, 0u, 56167u)), Struct_1(vec3<bool>(false, true, true), 160f, vec4<u32>(4294967295u, 1u, 0u, 0u)), Struct_1(vec3<bool>(true, false, false), -155f, vec4<u32>(0u, 23723u, 1u, 1u)), Struct_1(vec3<bool>(false, false, true), -1057f, vec4<u32>(51394u, 30168u, 1u, 0u)), Struct_1(vec3<bool>(true, false, true), 249f, vec4<u32>(10260u, 13586u, 4294967295u, 42703u)), Struct_1(vec3<bool>(false, false, true), 517f, vec4<u32>(0u, 60493u, 1u, 4294967295u)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec3<u32> {
    global2 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(26897i, firstTrailingBit(-1i), select(0i, 1i, true)), countOneBits(~vec3<i32>(2147483647i, -1i, 39905i))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 26u)];
    let var_2 = !select(!select(var_1.a.yz, var_1.a.zy, arg_0), vec2<bool>(arg_0, arg_0), true || !any(vec4<bool>(arg_0, var_1.a.x, arg_0, arg_0)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(806f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), var_1.b) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(round(-213f)))))));
    return u_input.b;
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = var_0;
    var var_3 = 29220u;
    global0 = array<Struct_1, 26>();
    return firstTrailingBit(~(~vec2<i32>(14822i, abs(48638i))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    return _wgslsmith_div_vec2_i32(func_3(global0[_wgslsmith_index_u32(1u, 26u)]), vec2<i32>(~(abs(0i) << (_wgslsmith_clamp_u32(arg_1.c.x, arg_0, 5976u) % 32u)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-841f - -2079f), _wgslsmith_f_op_f32(-829f - 281f), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1001f, 842f)), _wgslsmith_f_op_f32(step(-662f, 1223f)))))))));
    let var_0 = vec2<bool>(true, true);
    global2 = array<Struct_1, 22>();
    let var_1 = vec2<f32>(-307f, _wgslsmith_f_op_f32(2223f * 783f));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<i32>(-1i, -2147483647i, 56314i) << (func_1(false, var_1, var_1.x) % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 316f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(214f, 395f)), var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), var_1.x))), 24280u, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(abs(func_2(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], vec3<bool>(var_0.x, false, var_0.x))), firstTrailingBit(vec2<i32>(-1i, 0i) << (vec2<u32>(u_input.a, 36872u) % vec2<u32>(32u))))));
}

