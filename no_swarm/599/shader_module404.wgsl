struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32> = vec4<i32>(28319i, -103633i, 0i, -4971i);

var<private> global2: Struct_2;

var<private> global3: Struct_4 = Struct_4(vec3<f32>(-549f, 1805f, -132f), vec3<u32>(0u, 1u, 9205u), 0u, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -562f);
    let var_1 = arg_0;
    var var_2 = abs(arg_1.b.xy) << (reverseBits(_wgslsmith_div_vec2_u32(min(var_1.d.xw | arg_1.b.zz, _wgslsmith_div_vec2_u32(arg_1.b.yz, global3.b.zx)), abs(~var_1.d.yx))) % vec2<u32>(32u));
    var var_3 = Struct_2(vec4<bool>(false, true, true, false), var_2.x);
    global2 = Struct_2(!vec4<bool>(false, all(select(global2.a.wy, var_3.a.zy, var_3.a.wz)), any(!vec3<bool>(global3.d, true, false)), arg_1.d), u_input.c);
    return ~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 1i ^ arg_3.x, global1.x), min(~vec3<i32>(u_input.a, 705i, 11742i), vec3<i32>(var_1.b, 64512i, _wgslsmith_div_i32(-13781i, arg_0.b))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    var var_0 = select(max(vec4<u32>(arg_3.b, _wgslsmith_mult_u32(global3.c, global2.b), countOneBits(u_input.d.x), u_input.c) & vec4<u32>(_wgslsmith_add_u32(19244u, u_input.d.x), u_input.c >> (62940u % 32u), arg_3.b, 0u << (u_input.c % 32u)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(97826u, 16119u, global2.b, 1u), vec4<u32>(0u, u_input.d.x, 6367u, u_input.c)))), vec4<u32>(92258u, firstTrailingBit(global2.b), ~select(15781u, 17126u, global2.a.x), 0u) | (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, global2.b, global2.b, 1u), vec4<u32>(9622u, global3.c, 4294967295u, global3.c)) >> (min(vec4<u32>(19612u, 1u, 12451u, global3.c) >> (vec4<u32>(global2.b, arg_3.b, arg_3.b, global3.b.x) % vec4<u32>(32u)), ~vec4<u32>(90958u, 4294967295u, global2.b, u_input.c)) % vec4<u32>(32u))), select(!vec4<bool>(any(vec4<bool>(global2.a.x, global3.d, arg_1, false)), false, !global2.a.x, false || global3.d), vec4<bool>(all(select(vec3<bool>(arg_1, true, arg_3.a.x), global2.a.zyx, vec3<bool>(true, false, global2.a.x))), false, all(global2.a.xwy), any(select(arg_3.a, vec4<bool>(false, true, false, arg_1), false))), true));
    global0 = _wgslsmith_f_op_f32(ceil(arg_2.x));
    let var_1 = 40501i;
    return global3.d;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> bool {
    let var_0 = ~(vec4<u32>(45658u, 1u, u_input.d.x, (global3.c << (62964u % 32u)) & abs(global3.b.x)) & vec4<u32>(max(~u_input.d.x, 1u), global2.b ^ 68193u, 102760u & _wgslsmith_sub_u32(6560u, u_input.c), abs(49344u & arg_0)));
    global2 = Struct_2(vec4<bool>(global2.a.x | false, _wgslsmith_f_op_f32(-1002f - arg_1) <= -233f, true, true), global3.c);
    let var_1 = global3.a;
    global2 = Struct_2(global2.a, 0u);
    var var_2 = max(-8003i, global1.x);
    return func_3(arg_2.x, !global2.a.x || global3.d, _wgslsmith_f_op_vec2_f32(min(var_1.yy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-539f, -741f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, arg_1)) + var_1.xz))))), Struct_2(global2.a, 18926u));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec2<u32> {
    global0 = arg_1.a;
    global1 = min(vec4<i32>(_wgslsmith_clamp_i32(arg_1.c.x, global1.x, _wgslsmith_clamp_i32(arg_1.c.x, arg_2.x, arg_2.x)), u_input.a, -1i, abs(_wgslsmith_sub_i32(-40467i, global1.x))), vec4<i32>(min(reverseBits(u_input.a), -1i), firstLeadingBit(-u_input.a), _wgslsmith_sub_i32(-1i, 5745i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global1.xzw, vec3<i32>(2147483647i, -7970i, 0i)), i32(-1i) * -2147483647i))) >> (firstLeadingBit(arg_1.d) % vec4<u32>(32u));
    let var_0 = 68467i;
    let var_1 = ~1u;
    let var_2 = Struct_1(any(select(arg_0, select(select(global2.a, vec4<bool>(true, true, false, true), true), global2.a, vec4<bool>(false, global3.d, global3.d, arg_0.x)), ~4294967295u > _wgslsmith_div_u32(4294967295u, u_input.d.x))), vec4<f32>(-2076f, _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(ceil(global3.a.x)))), 868f, global3.a.x));
    return global3.b.yz;
}

fn func_1() -> vec4<bool> {
    var var_0 = all(vec3<bool>(any(select(global2.a.wy, vec2<bool>(true, false), select(true, true, false))), !all(!vec2<bool>(global3.d, global2.a.x)), global2.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global3.a.xz);
    var var_2 = min(u_input.d, func_5(vec4<bool>(true, func_4(global2.b & 0u, 253f, func_2(Struct_3(var_1.x, u_input.a, vec2<i32>(global1.x, u_input.b), vec4<u32>(26123u, 1u, global2.b, 4294967295u), 62831u), Struct_4(global3.a, vec3<u32>(4294967295u, 4294967295u, u_input.c), global3.c, true), vec4<bool>(global2.a.x, global3.d, global3.d, true), vec2<i32>(-2147483647i, u_input.a)), func_3(45548i, global2.a.x, var_1, Struct_2(vec4<bool>(false, global3.d, true, false), global3.b.x))), true, global2.a.x), Struct_3(-1000f, global1.x & 7635i, -(vec2<i32>(u_input.a, u_input.b) ^ vec2<i32>(-726i, 0i)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b, 4294967295u, 1u, 4294967295u), vec4<u32>(29671u, u_input.c, 51585u, global2.b)), vec4<u32>(global3.c, global2.b, 1u, 9185u)), ~60352u), countOneBits(~max(vec2<i32>(global1.x, u_input.a), global1.ww))));
    var_2 = ~vec2<u32>(func_5(!select(global2.a, global2.a, global2.a), Struct_3(731f, 1i, vec2<i32>(u_input.b, -2147483647i) >> (global3.b.yz % vec2<u32>(32u)), firstLeadingBit(vec4<u32>(var_2.x, u_input.c, global2.b, global3.c)), 0u), global1.yx).x, global3.c);
    var var_3 = vec2<u32>(u_input.d.x, global2.b);
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d;
    let var_1 = Struct_2(!func_1(), (abs(global2.b) >> (firstLeadingBit(1u) % 32u)) ^ 1u);
    global1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-max(global1.x, u_input.b), u_input.a), _wgslsmith_add_i32(u_input.a, 28354i)), u_input.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(select(min(global1.wxz, global1.zxw), -vec3<i32>(global1.x, global1.x, u_input.a), var_1.a.wyw)), vec3<i32>(u_input.a, max(~0i, 0i), firstTrailingBit(-2147483647i << (u_input.d.x % 32u)))), firstTrailingBit(global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.zw);
}

