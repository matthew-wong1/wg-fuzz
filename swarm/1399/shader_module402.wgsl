struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec4<f32>(-1386f, 1524f, -1042f, 308f), true, vec3<u32>(70979u, 18550u, 47585u)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec4<f32>(263f, 212f, 859f, 695f), true, vec3<u32>(1u, 12598u, 1u)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec4<f32>(-1000f, 632f, 618f, -1000f), true, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, true), vec4<f32>(-604f, -218f, -464f, 1687f), false, vec3<u32>(3002u, 1u, 1u)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec4<f32>(-1463f, 512f, -1003f, -188f), true, vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec4<f32>(220f, -2344f, -934f, 208f), true, vec3<u32>(4294967295u, 34293u, 1u)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec4<f32>(-1000f, 733f, -521f, 758f), false, vec3<u32>(7160u, 1u, 39291u)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec4<f32>(1000f, 1877f, 224f, 178f), true, vec3<u32>(58402u, 68740u, 0u)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec4<f32>(-1942f, -648f, 295f, -1701f), false, vec3<u32>(0u, 19352u, 31058u)), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, true), vec4<f32>(1000f, 1000f, -657f, -786f), true, vec3<u32>(104741u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec4<f32>(1371f, -1203f, 1037f, -1044f), true, vec3<u32>(1u, 1u, 1u)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec4<f32>(-114f, 1960f, -435f, 1272f), false, vec3<u32>(21818u, 3927u, 31308u)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec4<f32>(-663f, -1357f, -238f, 183f), true, vec3<u32>(62307u, 45342u, 0u)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec4<f32>(-1000f, 131f, 186f, -2734f), true, vec3<u32>(1u, 9215u, 50578u)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec4<f32>(-659f, 867f, 1504f, 841f), false, vec3<u32>(1u, 45984u, 1u)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec4<f32>(-1041f, -261f, 948f, -859f), true, vec3<u32>(1u, 58510u, 11087u)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec4<f32>(-894f, 569f, 823f, -1765f), true, vec3<u32>(52680u, 47804u, 85900u)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec4<f32>(-294f, 436f, -1263f, -546f), false, vec3<u32>(4294967295u, 52785u, 1661u)), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, true), vec4<f32>(492f, 972f, -1155f, 743f), true, vec3<u32>(63596u, 2201u, 0u)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec4<f32>(1000f, -2404f, -515f, 676f), true, vec3<u32>(1054u, 13010u, 1005u)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec4<f32>(1000f, 369f, 1282f, -1000f), false, vec3<u32>(0u, 4294967295u, 37591u)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec4<f32>(-572f, 604f, 937f, -1442f), true, vec3<u32>(27422u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec4<f32>(-800f, 536f, -251f, 864f), false, vec3<u32>(0u, 19501u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec4<f32>(1000f, 1129f, -510f, -226f), true, vec3<u32>(65841u, 100660u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec4<f32>(623f, 489f, -639f, -604f), true, vec3<u32>(33113u, 31898u, 1u)));

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_1, 28>;

var<private> global4: f32 = 141f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_div_u32(u_input.a, ~(~1u));
    let var_1 = vec3<bool>(arg_0, false, true);
    let var_2 = u_input.b.x;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1532f));
    var var_3 = select(~firstLeadingBit(~(~vec2<u32>(91062u, u_input.a))), vec2<u32>(u_input.a, u_input.a), select(!select(!var_1.xx, var_1.yx, var_1.xz), var_1.yy, arg_0));
    return var_3.x;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_1.c.yyx;
    var var_1 = vec2<bool>(any(select(arg_1.b, select(select(arg_1.a.zw, arg_1.a.zz, arg_1.a.zw), select(arg_1.b, arg_1.a.yx, true), !arg_1.d), select(select(vec2<bool>(arg_1.d, arg_1.b.x), arg_1.b, arg_1.b), !vec2<bool>(arg_1.a.x, false), !arg_1.b))), false);
    let var_2 = 349f;
    let var_3 = global1[_wgslsmith_index_u32(select(arg_1.e.x, 42468u, var_2 < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.x)))), 18u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1140f, var_2))) - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1532f), arg_1.c.x)));
    return !(!vec4<bool>(var_1.x, 6896i != _wgslsmith_clamp_i32(-15295i, u_input.b.x, u_input.b.x), !all(arg_1.b), !all(arg_1.b)));
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = vec4<i32>(u_input.b.x << (u_input.a % 32u), ~u_input.b.x, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, ~u_input.b.x), u_input.b.x), ~(~u_input.b.x));
    global0 = array<Struct_1, 25>();
    global1 = array<vec4<u32>, 18>();
    var var_1 = u_input.b.x << (arg_0.x % 32u);
    var var_2 = Struct_1(!select(vec4<bool>(true, true, true, true), !func_3(u_input.a, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), vec4<f32>(-691f, 1220f, 256f, -127f), true, arg_0.zyw)), true), select(!vec2<bool>(all(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, true))), vec2<bool>(_wgslsmith_f_op_f32(ceil(665f)) != -1000f, select(true, true, func_3(u_input.a, global2[_wgslsmith_index_u32(0u, 24u)]).x)), false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(trunc(-2195f)), 1283f), any(select(select(vec2<bool>(true, true), func_3(arg_0.x, Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec4<f32>(-241f, 787f, 484f, -928f), true, arg_0.yxz)).xy, vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), 30556u > arg_0.x), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true))), min(select(~reverseBits(arg_0.zyx), arg_0.wwy, vec3<bool>(true, true, true)), max(~arg_0.xzx, arg_0.yzy) & ~vec3<u32>(arg_0.x, 0u, 4294967295u)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2070f, _wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = ~(vec2<i32>(arg_3.x, _wgslsmith_mod_i32(10729i >> (arg_2.e.x % 32u), arg_3.x)) >> (arg_2.e.yy % vec2<u32>(32u)));
    var var_1 = _wgslsmith_mult_i32(-25392i, u_input.b.x);
    global4 = 1493f;
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return _wgslsmith_add_u32(firstLeadingBit(14524u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_1(28693i < (1i | u_input.b.x)), 4294967295u, abs(37079u), func_4(~vec2<u32>(59061u, 39337u), _wgslsmith_f_op_vec4_f32(func_2(~global1[_wgslsmith_index_u32(4294967295u, 18u)])), global0[_wgslsmith_index_u32(13160u, 25u)], vec3<i32>(firstLeadingBit(u_input.b.x), -u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -46712i))))), ~firstLeadingBit(global1[_wgslsmith_index_u32(4795u, 18u)]));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yww >> (var_0.yyw % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.b.yxx, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), firstTrailingBit(u_input.b.xyx), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 2147483647i), u_input.b.wzz, vec3<i32>(u_input.b.x, u_input.b.x, 0i))))), select(u_input.b.x, -80612i, any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), -1i);
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(select(firstTrailingBit(vec3<i32>(u_input.b.x, -14913i, u_input.b.x)), vec3<i32>(-21187i, u_input.b.x, -1i), true)), vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(0i), _wgslsmith_add_i32(u_input.b.x, 44733i)), -43405i, reverseBits(2127i & u_input.b.x))), var_1.x, ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(min(vec4<i32>(-u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -46375i), var_1.x | -14240i, var_1.x), countOneBits(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b))), min(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(-32774i, -50834i, -3235i, u_input.b.x), u_input.b), ~vec4<i32>(70915i, var_1.x, u_input.b.x, 0i), vec4<i32>(u_input.b.x, var_1.x, u_input.b.x, -2147483647i)), _wgslsmith_mult_vec4_i32(~u_input.b, -u_input.b))), max(15579u, 1u));
}

