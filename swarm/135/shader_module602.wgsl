struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(-49053i, -62951i, i32(-2147483648)), 4294967295u, Struct_1(vec3<bool>(true, true, true), false, vec4<u32>(4294967295u, 0u, 6663u, 27716u), vec3<bool>(false, false, true)));

var<private> global2: array<i32, 21>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = min(global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(max(2147483647i, min(-1i, 1i)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(4294967295u), 36419u), 21u)]), -firstTrailingBit(~vec2<i32>(global1.a.x, global3.a.x))));
    global3 = arg_0;
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_div_i32(global1.a.x, -global1.a.x), -global2[_wgslsmith_index_u32(95024u, 21u)], _wgslsmith_mod_i32(arg_0.a.x, max(firstTrailingBit(2147483647i), 2147483647i ^ var_0))), ~min(_wgslsmith_add_u32(arg_1.x, ~arg_3.x), u_input.a), global1.c);
    global1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -739f);
    return min(~(var_1.c.c | arg_2.c), vec4<u32>(arg_3.x, ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, arg_1.x), global1.c.c.yw), 1u), var_1.c.c.x, ~firstLeadingBit(arg_0.b)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global2 = array<i32, 21>();
    let var_0 = min(vec4<i32>(-_wgslsmith_mod_i32(-arg_1.a.x, 2147483647i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0.c.c.x, 21u)], 8959i), vec2<i32>(0i, 15721i)) | arg_1.a.x), -global1.a.x, global2[_wgslsmith_index_u32(arg_0.c.c.x | 69110u, 21u)]), abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 19650i, 46667i, arg_0.a.x), vec4<i32>(arg_1.a.x, -16527i, -1i, 18747i)), min(vec4<i32>(arg_0.a.x, global1.a.x, global1.a.x, arg_1.a.x), vec4<i32>(-7731i, 56522i, global3.a.x, global0.x))) >> (~firstLeadingBit(vec4<u32>(arg_2.c.x, 62581u, global3.b, 38499u)) % vec4<u32>(32u))));
    global0 = -countOneBits(var_0);
    let var_1 = ~_wgslsmith_mod_vec4_u32(~(~global1.c.c) ^ vec4<u32>(~4294967295u, 0u, _wgslsmith_add_u32(35862u, 5760u), ~global1.b), func_3(arg_0, _wgslsmith_sub_vec2_u32(~vec2<u32>(23716u, arg_2.c.x), _wgslsmith_sub_vec2_u32(vec2<u32>(24962u, 53337u), global1.c.c.yx)), arg_2, vec3<u32>(_wgslsmith_mult_u32(arg_0.c.c.x, u_input.a), ~arg_1.c.c.x, ~arg_1.c.c.x)));
    global2 = array<i32, 21>();
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(vec3<i32>(-2147483647i, -402i, reverseBits(abs(2147483647i))), arg_1.x, global3.c);
    let var_1 = var_0;
    let var_2 = any(vec3<bool>(true, !(!(var_0.c.b && false)), !all(!vec4<bool>(global1.c.b, arg_0.x, false, true))));
    global0 = _wgslsmith_mod_vec4_i32(~(-(vec4<i32>(global3.a.x, -19878i, 20821i, -1i) >> (vec4<u32>(arg_1.x, 4276u, u_input.a, 18794u) % vec4<u32>(32u)))) << (~var_0.c.c % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b >> (var_0.c.c.x % 32u), select(var_0.a.x, 2147483647i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 1i), global1.a.xx), -global0.x), firstLeadingBit(min(vec4<i32>(2147483647i, global3.a.x, 0i, -15806i), vec4<i32>(var_0.a.x, arg_3.x, var_0.a.x, 35297i)))), vec4<i32>(2147483647i, global0.x, ~1i, ~(~0i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(997f, 391f, 282f) + vec3<f32>(1335f, -516f, 126f))), vec3<f32>(-597f, _wgslsmith_f_op_f32(round(-938f)), _wgslsmith_f_op_f32(-574f * -681f)))))));
    return Struct_2(vec3<i32>(global1.a.x, _wgslsmith_sub_i32(select(global2[_wgslsmith_index_u32(24600u, 21u)], ~var_1.a.x, !var_0.c.d.x), -16357i), _wgslsmith_mod_i32(-2147483647i, abs(abs(307i)))), firstLeadingBit(global3.b), global3.c);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> i32 {
    global1 = Struct_2(global3.a, 18795u, global1.c);
    global2 = array<i32, 21>();
    let var_0 = func_4(select(!global3.c.d, select(!(!global3.c.a), vec3<bool>(func_2(Struct_2(vec3<i32>(32062i, -1i, 1i), 32200u, Struct_1(vec3<bool>(false, global3.c.d.x, global1.c.a.x), arg_2, vec4<u32>(11373u, global3.b, u_input.a, u_input.a), global3.c.d)), Struct_2(arg_1.xzw, global1.c.c.x, Struct_1(global1.c.a, false, vec4<u32>(arg_0, 4294967295u, global3.c.c.x, 8187u), vec3<bool>(global1.c.a.x, false, true))), global3.c), true, true), vec3<bool>(global3.c.b, arg_2, true)), select(global1.c.d, global1.c.a, vec3<bool>(true, true, global3.c.d.x))), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(global1.c.c.wzz), global3.c.c.zyz), select(41501u, ~0u << (~select(0u, 0u, true) % 32u), func_2(Struct_2(arg_1.zyw, ~global1.c.c.x, global1.c), Struct_2(vec3<i32>(global2[_wgslsmith_index_u32(1u, 21u)], 4664i, 2357i), 5668u, global3.c), global1.c)), _wgslsmith_mult_vec3_i32(global1.a, vec3<i32>(firstLeadingBit(1i), u_input.d, ~arg_3) ^ _wgslsmith_add_vec3_i32(vec3<i32>(global3.a.x, -1i, 2147483647i), firstTrailingBit(global1.a))));
    let var_1 = arg_1.xyx;
    return -global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 21>();
    global3 = Struct_2(_wgslsmith_clamp_vec3_i32(~abs(global0.zxw), vec3<i32>(func_1(u_input.a, vec4<i32>(-1i, u_input.b, global0.x, 73306i) | vec4<i32>(-16518i, -19583i, -20294i, -27350i), false, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, global3.b), 21u)]), 55533i, i32(-1i) * -2147483647i), global1.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, ~global1.c.c.x), global3.c.c.x), global1.c);
    let var_0 = u_input.a;
    let var_1 = Struct_1(select(vec3<bool>(false, global1.c.a.x, global1.c.a.x), !vec3<bool>(global3.c.d.x, any(vec3<bool>(global1.c.b, false, global3.c.b)), true), global3.c.d), global1.c.b != (global3.c.a.x && (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 4294967295u, 4294967295u), vec3<u32>(u_input.a, var_0, 69651u)) <= u_input.a)), countOneBits(~(vec4<u32>(1u, 0u, 4294967295u, 80524u) | global1.c.c)), func_4(vec3<bool>(true, true, true), global3.c.c.yzz, _wgslsmith_mod_u32(global1.b, global1.b), -(~global1.a)).c.a);
    var var_2 = _wgslsmith_mult_i32(-_wgslsmith_sub_i32(18910i, u_input.d | min(-2147483647i, -7462i)), -u_input.d);
    global2 = array<i32, 21>();
    global0 = ~(~vec4<i32>(~(global1.a.x << (0u % 32u)), select(func_4(global3.c.d, vec3<u32>(var_1.c.x, 22782u, 52384u), global3.c.c.x, global1.a).a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(global2[_wgslsmith_index_u32(global1.c.c.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])), false), firstTrailingBit(_wgslsmith_dot_vec2_i32(global0.yy, global1.a.yz)), ~global1.a.x));
    global1 = Struct_2(vec3<i32>(-1i << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global3.c.c.xww, var_1.c.yyz), func_4(var_1.a, var_1.c.ywx, global3.c.c.x, vec3<i32>(global0.x, global2[_wgslsmith_index_u32(1u, 21u)], global1.a.x)).b) % 32u), 49498i, ~(min(global3.a.x, u_input.b) ^ ~global3.a.x)), global1.b, Struct_1(!(!global3.c.a), !select(all(vec2<bool>(true, global1.c.d.x)), !global3.c.d.x, any(var_1.a)), ~_wgslsmith_add_vec4_u32(global3.c.c, global3.c.c & vec4<u32>(global3.b, 26424u, global3.c.c.x, 4294967295u)), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-655f, 208f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - -148f)))), abs(_wgslsmith_div_i32(~_wgslsmith_mult_i32(-23644i, global1.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3387i, global3.a.x, 1i, global3.a.x), vec4<i32>(u_input.c, -66206i, global0.x, global1.a.x)), 2147483647i >> (global3.c.c.x % 32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-819f))) * _wgslsmith_f_op_f32(1f * -921f)), -1113f, -1142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-285f, _wgslsmith_f_op_f32(-1000f + 274f), true)) * _wgslsmith_f_op_f32(f32(-1f) * -113f))));
}

