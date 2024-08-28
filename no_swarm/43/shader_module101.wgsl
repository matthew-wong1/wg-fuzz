struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 0u, 84257u, 0u);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-675f, -1035f, 124f), false, false, vec4<f32>(791f, 1000f, -211f, -306f), vec2<f32>(-137f, 1000f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = 10109u;
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(2544i, -1i, -1i, -1i)), vec4<i32>(-2628i, -1i, u_input.d.x, u_input.c) >> ((vec4<u32>(1u, 39471u, global1.x, u_input.a.x) ^ vec4<u32>(4294967295u, 1u, 1u, 73834u)) % vec4<u32>(32u))), max(abs(~u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(37789i, u_input.d.x, 2147483647i, u_input.d.x) ^ u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(31640i, 28011i, 66543i, u_input.c), vec4<i32>(u_input.c, -1i, 2615i, 0i))))), 2147483647i, u_input.c);
    let var_2 = Struct_2(u_input.d.x, Struct_1(_wgslsmith_f_op_vec3_f32(max(global0.xyz, _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, 838f, -1000f), _wgslsmith_f_op_vec3_f32(global2.d.yyy + vec3<f32>(global2.d.x, global2.d.x, global0.x))))), select(global2.c, !(!global2.c), true), any(!(!vec2<bool>(global2.c, true))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.d.x, global0.x)), _wgslsmith_f_op_f32(min(global2.a.x, global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1119f), 1285f), global2.d.ww));
    global2 = var_2.b;
    return _wgslsmith_f_op_f32(select(-1088f, -1681f, (false | global2.c) || (1f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.b.a.x, global2.d.x, var_2.b.c)) - var_2.b.d.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global2 = arg_1.b;
    global1 = ~max(~max(vec4<u32>(0u, u_input.b, arg_0, 4294967295u), vec4<u32>(35221u, 36739u, global1.x, u_input.b)), ~(reverseBits(vec4<u32>(4294967295u, arg_0, 1u, u_input.b)) ^ firstTrailingBit(vec4<u32>(46127u, 0u, 1u, global1.x))));
    global0 = _wgslsmith_f_op_vec4_f32(arg_1.b.d - vec4<f32>(-871f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-arg_1.b.d.x))), global0.x));
    var var_0 = vec4<bool>(!global2.c != select(global2.b, (u_input.b | u_input.a.x) == 60799u, all(!vec4<bool>(true, global2.c, global2.b, true))), !all(!vec3<bool>(true, arg_1.b.c, false)) || false, all(vec4<bool>(any(select(vec3<bool>(true, false, global2.b), vec3<bool>(false, false, false), vec3<bool>(global2.b, arg_1.b.c, global2.b))), true, _wgslsmith_dot_vec4_u32(vec4<u32>(27549u, 8355u, 4294967295u, 24598u), vec4<u32>(0u, global1.x, arg_0, arg_0)) > 29109u, _wgslsmith_f_op_f32(max(arg_1.b.a.x, arg_1.b.d.x)) >= -1234f)), arg_1.b.c);
    let var_1 = arg_1;
    return arg_1.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<f32>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(select(global2.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(-459f)), arg_2.x, -1000f, arg_1.b.e.x))), global2.d), any(vec3<bool>(any(select(vec4<bool>(global2.c, false, false, true), vec4<bool>(true, false, global2.b, false), vec4<bool>(global2.c, false, false, global2.b))), false, (-13907i | u_input.c) >= -1i))));
    var var_0 = 168682u;
    let var_1 = ~_wgslsmith_clamp_i32(reverseBits(-52928i), u_input.d.x, ~(-1i));
    var var_2 = false;
    var var_3 = select(true, !global2.b, (reverseBits(global1.x) | firstTrailingBit(u_input.a.x)) < 0u);
    return arg_1.b.e.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.e.x)), _wgslsmith_f_op_f32(-global2.a.x), global2.a.x), Struct_2(_wgslsmith_dot_vec4_i32(u_input.d, ~u_input.d), func_2(min(0u, global1.x), Struct_2(u_input.c, Struct_1(vec3<f32>(-1000f, -141f, global0.x), arg_0.x, arg_0.x, global2.d, vec2<f32>(global2.d.x, global0.x))))), vec3<f32>(global2.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, 1732f) + 812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x + global0.x))), vec2<f32>(631f, 339f))), global2.d.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) + _wgslsmith_f_op_f32(f32(-1f) * -445f))), -262f));
    global1 = max(firstTrailingBit(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 3391u, 11383u, 1u), vec4<u32>(1u, 6765u, u_input.a.x, global1.x)) & vec4<u32>(1625u, u_input.b, 0u, 12183u))), max(min(vec4<u32>(0u, 4294967295u, u_input.b, global1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 39914u, 56738u, 0u), vec4<u32>(1u, 4294967295u, 0u, u_input.b))) ^ vec4<u32>(0u, reverseBits(11271u), 2247u, 4294967295u), ~countOneBits(vec4<u32>(41832u, global1.x, u_input.b, global1.x) << (vec4<u32>(global1.x, 928u, 25348u, global1.x) % vec4<u32>(32u)))));
    var var_0 = Struct_2(u_input.d.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.wwy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(global0.yyy)), _wgslsmith_f_op_vec3_f32(-global2.a))), arg_0)), any(vec3<bool>(true, true, arg_0.x)) == !func_2(4294967295u, Struct_2(u_input.c, Struct_1(vec3<f32>(global2.a.x, 1564f, 287f), arg_0.x, true, global2.d, vec2<f32>(global0.x, global0.x)))).b, !func_2(_wgslsmith_mod_u32(15503u, global1.x), Struct_2(u_input.d.x, Struct_1(vec3<f32>(global0.x, 1278f, 959f), false, arg_0.x, vec4<f32>(global0.x, global2.d.x, global2.a.x, 616f), global0.xw))).b, global2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.e.x, -333f))) + global2.d.yy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(143f, global0.x) - vec2<f32>(global2.a.x, global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.x, -133f, 973f, global0.x) * vec4<f32>(var_0.b.a.x, global2.e.x, global0.x, 1354f))))) * _wgslsmith_f_op_vec4_f32(trunc(global2.d))) - var_0.b.d);
    let var_1 = ~(~1i);
    return func_2(1u, Struct_2(i32(-1i) * -15564i, var_0.b));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = u_input.c >> (max(_wgslsmith_add_u32(_wgslsmith_mod_u32(~global1.x, 0u), 68815u), _wgslsmith_mod_u32(~(~global1.x), _wgslsmith_div_u32(~2337u, 1u << (arg_0.x % 32u)))) % 32u);
    var var_1 = Struct_2(-1i >> ((~(~u_input.a.x) | 727u) % 32u), arg_1);
    let var_2 = var_1.b;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(var_2.e.x, -1724f, global0.x >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.e.x), -1164f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_4 = !func_2(global1.x, Struct_2((-41292i | var_1.a) | 1i, Struct_1(arg_1.d.wzx, !arg_1.b, true, arg_1.d, vec2<f32>(-355f, var_2.e.x)))).c;
    return !vec3<bool>(true, !(!(u_input.d.x <= 14199i)), true);
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(u_input.c ^ ~(-u_input.d.x >> (_wgslsmith_add_u32(u_input.a.x, 46229u) % 32u)), func_2(_wgslsmith_dot_vec3_u32(max(vec3<u32>(85722u, 1u, global1.x), vec3<u32>(12347u, 0u, 4294967295u)), ~vec3<u32>(4294967295u, u_input.a.x, global1.x)) & ~19676u, Struct_2(-4969i >> ((global1.x ^ global1.x) % 32u), arg_3)));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-func_2(1u, Struct_2(abs(1i), func_1(vec3<bool>(arg_0.x, global2.b, arg_2)))).a), global2.c, true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.d - _wgslsmith_f_op_vec4_f32(ceil(var_0.b.d)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a.yz - global2.d.wx)));
    global1 = (~vec4<u32>(firstLeadingBit(1u), 4294967295u, ~45025u, u_input.a.x) ^ _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.a.x, 20722u), ~vec4<u32>(global1.x, 45406u, 48361u, global1.x), vec4<u32>(7084u, global1.x, 4294967295u, u_input.b)), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 35511u, global1.x), vec4<u32>(global1.x, global1.x, global1.x, global1.x)), ~vec4<u32>(36775u, 4294967295u, u_input.b, 20759u)))) | _wgslsmith_sub_vec4_u32(select(reverseBits(~vec4<u32>(31904u, global1.x, 1u, u_input.a.x)), vec4<u32>(~71948u, ~1u, global1.x, max(4294967295u, 39248u)), !(!vec4<bool>(arg_0.x, false, false, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 4294967295u, u_input.b, u_input.b) << (min(vec4<u32>(u_input.a.x, global1.x, u_input.b, u_input.a.x), vec4<u32>(u_input.a.x, global1.x, 0u, global1.x)) % vec4<u32>(32u)), max(vec4<u32>(10004u, 1338u, 73611u, u_input.b), vec4<u32>(u_input.a.x, 1u, 6904u, 0u)) >> (min(vec4<u32>(0u, u_input.a.x, 52398u, global1.x), vec4<u32>(92656u, u_input.b, u_input.b, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.x, 69372u, 91173u), vec4<u32>(global1.x, u_input.b, u_input.a.x, global1.x)) | abs(vec4<u32>(4294967295u, 0u, 35058u, 14027u))));
    var var_1 = Struct_1(func_1(arg_0).a, false, arg_2, global2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, arg_1))))));
    let var_2 = Struct_1(var_1.d.yxy, any(vec2<bool>(arg_2, arg_3.c & var_0.b.b)) && (!var_0.b.c | func_5(global1.xz, func_2(14325u, Struct_2(0i, arg_3)), global2.d).x), select(false, all(vec4<bool>(var_0.b.c, true, !arg_2, var_0.a < 5668i)), var_0.b.c), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -1509f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2(u_input.b, Struct_2(var_0.a, arg_3)).e.x, arg_1) + -1334f), 542f), global2.e);
    return Struct_2(-var_0.a, var_0.b);
}

fn func_7(arg_0: bool, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = arg_1.b;
    var var_1 = 766f;
    var_1 = _wgslsmith_div_f32(-965f, -655f);
    global1 = ~firstTrailingBit(vec4<u32>(14182u, ~_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u), ~_wgslsmith_dot_vec3_u32(global1.xyw, vec3<u32>(1u, 0u, 23386u)), 0u));
    var var_2 = vec4<u32>(~firstTrailingBit(u_input.a.x), global1.x, max(~30316u, 4294967295u), ~firstLeadingBit(~1u));
    return _wgslsmith_f_op_vec3_f32(-arg_1.b.d.www);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -302f, global2.d.x, 1000f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, -213f, global2.d.x, global2.a.x))))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_7(select(true, global2.c, global2.c), func_6(func_5(vec2<u32>(global1.x, 1u) << (global1.xz % vec2<u32>(32u)), func_1(vec3<bool>(false, false, global2.c)), func_2(global1.x, Struct_2(-2147483647i, Struct_1(global0.ywx, true, global2.b, vec4<f32>(-1531f, -864f, -630f, global0.x), vec2<f32>(global2.e.x, 499f)))).d), _wgslsmith_f_op_f32(func_3()), global2.c && true, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global0.x, 1113f) - vec3<f32>(global0.x, global0.x, -123f)), !global2.b, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, 631f, global2.e.x, global0.x)), func_2(u_input.a.x, Struct_2(u_input.c, Struct_1(vec3<f32>(global2.a.x, 1223f, global2.a.x), false, false, global2.d, global2.e))).a.xx)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.d.wxy + _wgslsmith_div_vec3_f32(vec3<f32>(870f, global0.x, 898f), vec3<f32>(1000f, -1290f, global2.d.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, 1000f, -542f)))))), global2.c))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -646f)), _wgslsmith_f_op_vec3_f32(-var_0))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, global0.x) * vec3<f32>(-444f, var_0.x, 1238f)))), _wgslsmith_f_op_vec3_f32(floor(global2.a))))));
    var var_2 = func_6(!vec3<bool>(any(!vec3<bool>(global2.c, true, global2.b)), global2.b, !(u_input.d.x < u_input.c)), -937f, !all(select(vec4<bool>(global2.c, true, global2.b, false), select(vec4<bool>(true, global2.c, global2.c, true), vec4<bool>(false, global2.b, global2.c, global2.b), vec4<bool>(global2.b, global2.c, global2.b, false)), !vec4<bool>(global2.c, global2.b, global2.c, global2.c))), Struct_1(_wgslsmith_f_op_vec3_f32(global0.xzz * global0.wyx), select(global2.b, global2.c, false) && global2.c, -2147483647i > u_input.d.x, vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)) - _wgslsmith_f_op_f32(-global2.d.x)), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1093f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1639f)), _wgslsmith_f_op_vec2_f32(-var_1.yx))))));
    let var_3 = func_6(vec3<bool>(all(!func_5(vec2<u32>(u_input.b, 1u), var_2.b, global2.d).yx), !(!global2.c), !global2.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1068f, -933f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))), true || var_2.b.c, var_2.b).b;
    var var_4 = 7175u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(~global1.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, global1.x, 61906u), vec4<u32>(69095u, u_input.a.x, u_input.a.x, u_input.b)), min(20871u, 13315u), _wgslsmith_add_u32(global1.x, 73813u))) << (min(vec2<u32>(_wgslsmith_div_u32(0u, u_input.a.x), global1.x), global1.yw ^ global1.ww) % vec2<u32>(32u)), 49902i, max(-reverseBits(u_input.c) | ~(i32(-1i) * -20545i), var_2.a), _wgslsmith_f_op_f32(floor(var_2.b.e.x)));
}

