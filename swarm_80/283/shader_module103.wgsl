struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-772f, -1634f, 1342f), vec3<f32>(917f, -2008f, 806f), vec3<f32>(1542f, -701f, 1099f), vec3<f32>(1092f, -202f, -615f), vec3<f32>(-1049f, 1686f, -1430f), vec3<f32>(352f, 592f, -825f), vec3<f32>(415f, 906f, 1647f), vec3<f32>(1000f, -1801f, -900f), vec3<f32>(-1380f, -841f, 1525f), vec3<f32>(-1315f, -2696f, 787f), vec3<f32>(631f, 1000f, 582f), vec3<f32>(690f, -683f, 547f), vec3<f32>(194f, 1555f, 120f), vec3<f32>(556f, -309f, -209f), vec3<f32>(1230f, -1264f, -1970f), vec3<f32>(262f, 426f, 2128f), vec3<f32>(1008f, 1636f, -252f), vec3<f32>(1550f, -1317f, -909f), vec3<f32>(387f, 1000f, 1000f), vec3<f32>(-873f, -423f, -1282f), vec3<f32>(1000f, -408f, 863f), vec3<f32>(868f, 181f, 444f), vec3<f32>(-282f, 306f, 941f), vec3<f32>(2205f, -251f, -734f), vec3<f32>(-642f, -920f, 590f), vec3<f32>(1132f, 397f, -1078f), vec3<f32>(166f, 155f, 466f), vec3<f32>(-580f, 188f, 379f), vec3<f32>(319f, 194f, -456f), vec3<f32>(1235f, -132f, -1219f), vec3<f32>(1883f, -1206f, -490f));

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: vec2<f32>;

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(1067f, -385f), vec2<f32>(-1945f, -1254f), vec2<f32>(-1165f, -838f), vec2<f32>(707f, 452f), vec2<f32>(737f, -1295f), vec2<f32>(1562f, 1177f), vec2<f32>(1927f, -1000f), vec2<f32>(-540f, 106f), vec2<f32>(1000f, 259f), vec2<f32>(2436f, 456f), vec2<f32>(-502f, 1853f), vec2<f32>(1290f, -2295f), vec2<f32>(1867f, 1193f), vec2<f32>(1786f, -685f), vec2<f32>(-1000f, -1017f), vec2<f32>(1397f, 436f), vec2<f32>(152f, 1000f), vec2<f32>(1069f, -2491f), vec2<f32>(-401f, -1321f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<u32>) -> vec2<i32> {
    global1 = array<vec4<f32>, 14>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = _wgslsmith_mod_u32(countOneBits(arg_0.x << ((~u_input.b >> (u_input.c % 32u)) % 32u)), 0u);
    var var_1 = firstLeadingBit(~firstLeadingBit(~arg_0.x) >> (~4294967295u % 32u));
    global4 = array<vec2<f32>, 19>();
    return (-u_input.d.zx >> (arg_0.zy % vec2<u32>(32u))) >> (arg_0.ww % vec2<u32>(32u));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.x)), -193f), global2.x)));
    let var_1 = -abs(-func_2(reverseBits(vec4<u32>(u_input.c, 8506u, u_input.c, u_input.b))));
    var var_2 = Struct_1(vec4<bool>(true || (false | any(vec4<bool>(true, false, false, true))), all(vec3<bool>(true, true, true)), (~1u << (u_input.b % 32u)) < (u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)) % 32u)), _wgslsmith_f_op_f32(round(-1398f)) <= _wgslsmith_f_op_f32(select(-540f, _wgslsmith_f_op_f32(f32(-1f) * -282f), true))), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, u_input.c, 1u)), select(vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(u_input.b, u_input.c, u_input.b), false) | vec3<u32>(u_input.c, 39390u, 11149u))), ~0i, var_1.x);
    var var_3 = vec2<f32>(329f, -376f);
    var var_4 = var_2.d;
    return var_2.a.wxx;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - global2.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(353f, -927f)), global2.x));
    let var_3 = _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(firstTrailingBit(~u_input.b), max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 21205u)), u_input.b))), 14u)], _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 14u)]));
    global0 = array<vec3<f32>, 31>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec2<bool>(true, 16383i >= _wgslsmith_clamp_i32(u_input.d.x, global3.x, u_input.a.x)), vec2<bool>(true, true), any(!func_1())));
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x), global2.x, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1082f)), _wgslsmith_f_op_f32(-2501f + -349f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(step(global2.x, 934f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f * -786f)), -548f))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3())), Struct_1(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), false), ~0u, func_2(~vec4<u32>(u_input.c, u_input.c, 8939u, u_input.b)).x, -(~u_input.e)));
    let var_2 = Struct_2(var_1.c, vec2<f32>(301f, var_1.a.x), var_1.c.a.xy, select(vec2<i32>(~var_1.c.c, -76006i), ~func_2(vec4<u32>(109187u, 10988u, u_input.b, 1u)) | select(_wgslsmith_div_vec2_i32(vec2<i32>(-13109i, u_input.e), global3.xy), firstLeadingBit(global3.xz), select(vec2<bool>(var_1.c.a.x, var_1.c.a.x), vec2<bool>(false, var_1.c.a.x), vec2<bool>(var_1.c.a.x, var_1.c.a.x))), !(~global3.x > ~u_input.e)), var_1.c);
    var var_3 = ~u_input.c;
    var var_4 = ~vec3<u32>(var_1.c.b, 1u, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, u_input.b)), ~vec4<u32>(40960u, 59426u, u_input.c, var_1.c.b) & ~vec4<u32>(4294967295u, var_1.c.b, 42077u, var_2.e.b)));
    let var_5 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 166f)) < global2.x);
    var var_6 = reverseBits(u_input.d);
    let var_7 = vec2<bool>(!(!any(!var_1.c.a.zzz)), !(!(!(var_1.c.a.x && var_5))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(var_2.a.c, _wgslsmith_div_i32(var_2.e.c, global3.x)), max(abs(countOneBits(-43115i)), abs(u_input.e)), abs(-1i)));
}

