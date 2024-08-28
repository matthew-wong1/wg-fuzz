struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec2<i32>(43507i, -13755i)), Struct_3(vec2<i32>(-23289i, -1i)), Struct_3(vec2<i32>(21896i, 1i)), Struct_3(vec2<i32>(2147483647i, -30451i)), Struct_3(vec2<i32>(23528i, -1i)), Struct_3(vec2<i32>(-9718i, 33236i)), Struct_3(vec2<i32>(-1i, -24354i)), Struct_3(vec2<i32>(-1i, 2147483647i)), Struct_3(vec2<i32>(-39077i, 0i)), Struct_3(vec2<i32>(2147483647i, -9361i)), Struct_3(vec2<i32>(-4745i, 15235i)), Struct_3(vec2<i32>(15501i, 0i)), Struct_3(vec2<i32>(2147483647i, 1i)), Struct_3(vec2<i32>(6360i, 0i)), Struct_3(vec2<i32>(i32(-2147483648), 1i)), Struct_3(vec2<i32>(1i, 2147483647i)), Struct_3(vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec2<i32>(40196i, -22960i)), Struct_3(vec2<i32>(-1i, 1i)), Struct_3(vec2<i32>(2147483647i, -24200i)), Struct_3(vec2<i32>(i32(-2147483648), 1i)), Struct_3(vec2<i32>(-1i, 32550i)), Struct_3(vec2<i32>(-1i, -8064i)), Struct_3(vec2<i32>(7222i, -14728i)), Struct_3(vec2<i32>(i32(-2147483648), 8833i)), Struct_3(vec2<i32>(3477i, -12737i)), Struct_3(vec2<i32>(-1i, -1651i)));

var<private> global1: Struct_1 = Struct_1(true, vec4<bool>(true, true, false, true), vec4<u32>(1u, 0u, 0u, 1u), -16365i);

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<f32>(804f, 626f, 1048f, 1025f)), Struct_2(vec4<f32>(577f, 1356f, 1843f, 1017f)), Struct_2(vec4<f32>(-425f, -1075f, 1820f, 723f)), Struct_2(vec4<f32>(-1587f, -164f, 1000f, -1803f)), Struct_2(vec4<f32>(211f, -1000f, -525f, -311f)), Struct_2(vec4<f32>(-536f, 104f, 1868f, 695f)), Struct_2(vec4<f32>(1672f, -479f, 271f, 1012f)), Struct_2(vec4<f32>(1728f, 170f, -683f, 932f)), Struct_2(vec4<f32>(1329f, -658f, -1521f, 918f)), Struct_2(vec4<f32>(1425f, 831f, 122f, -857f)), Struct_2(vec4<f32>(-1007f, 1619f, -824f, -692f)), Struct_2(vec4<f32>(1492f, 1080f, 985f, 1574f)), Struct_2(vec4<f32>(-1618f, -1452f, 593f, -1631f)), Struct_2(vec4<f32>(-1141f, -108f, 748f, -125f)), Struct_2(vec4<f32>(-528f, 160f, 1000f, -142f)), Struct_2(vec4<f32>(-258f, -618f, 540f, -1828f)), Struct_2(vec4<f32>(-686f, -474f, 1159f, 1096f)));

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 94660u, 37670u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global3 = vec4<u32>(55703u, global1.c.x, ~firstTrailingBit(global1.c.x), 0u);
    global0 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - 100f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(703f, 999f) * arg_0.a.x)))));
    var var_1 = Struct_3(~(~vec2<i32>(905i, u_input.a.x)));
    let var_2 = max(-(vec3<i32>(2147483647i, ~var_1.a.x, -2147483647i) << (global1.c.www % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.d, global1.d, global1.d), ~countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_1.a.x, -1i), vec3<i32>(-1i, 2147483647i, u_input.b)))));
    return ~abs(95173u >> (1u % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_2) -> f32 {
    global1 = Struct_1((global1.d <= firstLeadingBit(select(-1i, 45946i, global1.b.x))) && true, global1.b, vec4<u32>(firstTrailingBit(global1.c.x), ~(~global1.c.x << (~global1.c.x % 32u)), ~reverseBits(func_3(global2[_wgslsmith_index_u32(0u, 17u)])), firstLeadingBit(2915u) & ~_wgslsmith_add_u32(1u, global1.c.x)), abs(u_input.a.x));
    let var_0 = vec4<i32>(~abs(~global1.d), global1.d, 1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, ~u_input.a.x, max(41675i, 64881i)), firstTrailingBit(global1.d)) & u_input.b);
    let var_1 = ~global3.wwy;
    global1 = Struct_1(!all(global1.b.yx), global1.b, ~abs(firstLeadingBit(abs(global1.c))), firstLeadingBit(0i) ^ _wgslsmith_clamp_i32(-52212i, u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -15790i, 0i, global1.d), vec4<i32>(u_input.a.x, u_input.b, -4819i, 45043i)), var_0.x)));
    global2 = array<Struct_2, 17>();
    return -397f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(306f, -233f, 1042f), vec2<u32>(4294967295u, 1u), Struct_2(vec4<f32>(1025f, 563f, -671f, -805f)))) - _wgslsmith_f_op_f32(f32(-1f) * -596f))), _wgslsmith_f_op_f32(f32(-1f) * -739f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-450f + -1000f))), 2586f, 794f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1321f, 2095f, 1453f), vec3<f32>(-1913f, -152f, -1504f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 979f, _wgslsmith_div_f32(-1634f, var_0.x)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-915f, -303f, 342f) + vec3<f32>(var_0.x, var_0.x, 469f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1133f) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * var_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -1622f, var_0.x)))))));
    let var_1 = Struct_3(u_input.a);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(-776f, -568f))))), _wgslsmith_f_op_f32(sign(-832f))));
    let var_2 = var_1;
    return Struct_1(true, global1.b, vec4<u32>(_wgslsmith_sub_u32(~global3.x, _wgslsmith_add_u32(0u, 4294967295u)) << (1u % 32u), 58032u, global3.x, 16599u), reverseBits(17997i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = global1.c.zyz | ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, 4294967295u), vec3<u32>(35572u, 4294967295u, 4294967295u) | global3.www), _wgslsmith_dot_vec2_u32(~global1.c.wy, arg_1.c.zz), 0u);
    var var_1 = true;
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(-1f);
    var_1 = !var_2.b.x;
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(571f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f - 1154f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1544f + _wgslsmith_f_op_f32(1449f * 270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1153f, -1612f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<Struct_3, 27>();
    var var_1 = min(u_input.b, u_input.a.x);
    let x = u_input.a;
    s_output = func_4(countOneBits(abs(vec4<i32>(u_input.b, -29199i, 21718i, global1.d) & vec4<i32>(-8557i, 36000i, 0i, 8467i))), func_1());
}

