struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 29> = array<u32, 29>(39499u, 14914u, 48453u, 29353u, 68523u, 0u, 4294967295u, 1u, 1u, 57644u, 4294967295u, 65852u, 1u, 1442u, 0u, 1u, 1u, 1u, 0u, 55571u, 1u, 1u, 1u, 4294967295u, 0u, 1u, 4294967295u, 1u, 7590u);

var<private> global2: vec2<i32> = vec2<i32>(-7106i, -35976i);

var<private> global3: array<vec4<bool>, 9>;

var<private> global4: vec2<f32> = vec2<f32>(505f, 965f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(4294967295u, 9u)], 1u);
    global1 = array<u32, 29>();
    var var_1 = !var_0.a;
    let var_2 = Struct_3(vec4<bool>(true, any(!select(vec3<bool>(var_1.x, false, var_0.a.x), vec3<bool>(true, arg_0, false), vec3<bool>(false, var_1.x, false))), var_0.a.x, all(global3[_wgslsmith_index_u32(~13514u ^ u_input.d.x, 9u)])), ~var_0.b);
    let var_3 = max(~u_input.d.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(~var_0.b, ~u_input.b ^ _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(var_0.b, 73946u, 1u)))));
    return !(-2147483647i <= _wgslsmith_div_i32(u_input.e, firstTrailingBit(_wgslsmith_clamp_i32(-20226i, global2.x, u_input.a.x))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = global2.x;
    let var_1 = global4.x;
    var var_2 = global4.x;
    var var_3 = ~select(u_input.b, 0u, (~1i << (~global1[_wgslsmith_index_u32(arg_0, 29u)] % 32u)) >= select(i32(-1i) * -41748i, abs(global2.x), func_3(false, u_input.d.xyz, global4.x)));
    global0 = 344f;
    return Struct_1(u_input.d.wx);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    return Struct_3(!(!(!select(global3[_wgslsmith_index_u32(23686u, 9u)], vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), u_input.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> bool {
    let var_0 = func_4(func_2(4294967295u));
    var var_1 = 2533f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-669f * 136f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1607f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * arg_0.d) * -644f)), _wgslsmith_f_op_f32(-arg_0.d));
    let var_3 = select(vec3<bool>(true, true, any(!select(var_0.a.xyy, var_0.a.zzz, var_0.a.wzy))), select(!(!var_0.a.xzw), vec3<bool>((global2.x << (var_0.b % 32u)) < (i32(-1i) * -2147483647i), false, func_4(Struct_1(vec2<u32>(arg_0.a.a.x, arg_0.b.a.x))).a.x), arg_2), any(select(var_0.a.yy, var_0.a.wy, var_0.a.xy)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(var_2.x)));
    return var_3.x;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = ~u_input.d.xz;
    var var_1 = select(!arg_1, !func_4(func_2(u_input.b)).a.yz, true);
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(0u, 9u)], ~_wgslsmith_sub_u32(max(~44491u, _wgslsmith_div_u32(u_input.b, var_0.x)), 70929u));
    var var_3 = func_2(min(12955u, ~(~(~global1[_wgslsmith_index_u32(38418u, 29u)]))));
    var var_4 = vec3<u32>(u_input.b, abs(func_4(Struct_1(var_3.a)).b), firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_4(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(4349u, 29u)], var_0.x))).b, var_0.x), 29u)]));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, global4.x, global4.x, -1160f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, global4.x, -513f, -498f)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> Struct_4 {
    var var_0 = arg_1.a.yzz;
    var var_1 = -_wgslsmith_clamp_i32(countOneBits(u_input.a.x), _wgslsmith_mod_i32(~u_input.a.x, ~(~u_input.a.x)), countOneBits(~(-30088i)) & max(u_input.c.x, -1i));
    var var_2 = vec3<i32>(i32(-1i) * -reverseBits(i32(-1i) * -31007i), global2.x, -2147483647i);
    var_2 = u_input.a;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-249f, arg_3.d)))));
    return Struct_4(arg_1, Struct_2(arg_3.a, arg_3.a, abs(~select(22541u, 4294967295u, true)), _wgslsmith_f_op_f32(-arg_3.d)), Struct_3(global3[_wgslsmith_index_u32(~113458u, 9u)], ~(~firstTrailingBit(arg_1.b))), arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~vec4<i32>(~u_input.e, _wgslsmith_clamp_i32(~62683i, global2.x, ~global2.x), ~abs(0i), u_input.e));
    global0 = -236f;
    let var_1 = func_6(_wgslsmith_f_op_vec4_f32(func_5(select(var_0.x >> (u_input.b % 32u), _wgslsmith_mult_i32(var_0.x, global2.x), true) >> (~min(0u, 4294967295u) % 32u), !vec2<bool>(func_1(Struct_2(Struct_1(vec2<u32>(72037u, 66745u)), Struct_1(u_input.d.yw), global1[_wgslsmith_index_u32(40255u, 29u)], 428f), global4.x, false, vec3<i32>(-2147483647i, -7973i, var_0.x)), true), vec4<i32>(-1i) * -abs(vec4<i32>(u_input.a.x, 28101i, 4068i, 38652i)))), Struct_3(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), global1[_wgslsmith_index_u32(~func_4(Struct_1(u_input.d.xw)).b, 29u)]), all(vec3<bool>(true, true, false)) && all(select(vec2<bool>(true, true), func_4(Struct_1(vec2<u32>(1u, 5106u))).a.zz, vec2<bool>(true, false))), Struct_2(func_2(~(~0u)), func_2(1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(70540u, 29u)], u_input.b), global4.x));
    var var_2 = 67855i;
    var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(max(var_0.yzz >> (vec3<u32>(134216u, 24779u, var_1.a.b) % vec3<u32>(32u)), max(vec3<i32>(-2147483647i, 28171i, u_input.c.x), vec3<i32>(24059i, -2147483647i, 2147483647i))), firstTrailingBit(max(u_input.a, var_0.xwy))), u_input.a.x, _wgslsmith_add_i32(1i, firstLeadingBit(-2147483647i)), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.a.x & global2.x, global2.x)));
    let var_3 = !(!select(var_1.a.a.zw, var_1.c.a.zy, !func_6(vec4<f32>(global4.x, 1000f, 1000f, 1517f), Struct_3(vec4<bool>(true, var_1.a.a.x, true, var_1.c.a.x), 0u), false, var_1.b).a.a.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.d) * global4.x);
    var var_4 = 45046u;
    let var_5 = ~reverseBits(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, -2000f, global4.x, -2287f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.d, -1000f, -2029f, var_1.b.d)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1333f, _wgslsmith_f_op_f32(floor(var_1.b.d)), global4.x, -1000f))), -199f);
}

