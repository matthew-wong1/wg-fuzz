struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    global1 = select(select(!(!select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, global1.x))), select(select(!vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, false, global1.x), all(vec2<bool>(global1.x, global1.x))), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, false)), select(!vec3<bool>(global1.x, global1.x, true), !vec3<bool>(true, false, global1.x), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), true))), !vec3<bool>(!global1.x, false, global1.x)), vec3<bool>(all(!vec2<bool>(global1.x, false)), false, !(!(false | global1.x))), vec3<bool>(u_input.a.x == global0.a, global1.x, !(_wgslsmith_f_op_f32(round(782f)) < _wgslsmith_div_f32(2048f, 1651f))));
    var var_0 = Struct_1(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, u_input.a.x), 36105i));
    global2 = array<Struct_2, 27>();
    var var_1 = ~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u));
    var var_2 = Struct_4(-vec2<i32>(max(63854i, arg_1.a.x), -(~(-2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.b)))), reverseBits(max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, 0i, 2147483647i, global0.a)), max(arg_1.a.x, ~arg_0))));
    return global1.x;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_1(global0.a);
    let var_1 = global2[_wgslsmith_index_u32(1u << (arg_1.x % 32u), 27u)];
    global1 = select(vec3<bool>(any(!select(vec4<bool>(global1.x, global1.x, arg_0, global1.x), vec4<bool>(false, global1.x, true, true), arg_0)), func_3(firstLeadingBit(global0.a) << (_wgslsmith_sub_u32(arg_1.x, 0u) % 32u), Struct_4(u_input.a.zx >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 827f, var_1.a)), _wgslsmith_mult_i32(13242i, 0i))), !(!(false | global1.x))), select(vec3<bool>(false, true == select(false, false, true), _wgslsmith_f_op_f32(floor(-1000f)) < var_1.a), select(select(!vec3<bool>(global1.x, arg_0, global1.x), vec3<bool>(arg_0, global1.x, false), all(global1.xy)), vec3<bool>(arg_0, select(global1.x, false, global1.x), arg_0), select(vec3<bool>(true, global1.x, false), !vec3<bool>(arg_0, global1.x, global1.x), vec3<bool>(global1.x, true, arg_0))), select(!select(vec3<bool>(true, arg_0, global1.x), vec3<bool>(true, false, arg_0), true), select(vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(arg_0, arg_0, global1.x), vec3<bool>(global1.x, global1.x, global1.x), true)), select(select(vec3<bool>(false, arg_0, false), vec3<bool>(global1.x, false, global1.x), true), vec3<bool>(global1.x, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, false)))), !select(true, all(select(vec4<bool>(arg_0, arg_0, true, global1.x), vec4<bool>(false, arg_0, true, arg_0), true)), true));
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    return vec3<bool>(!select((arg_0 || arg_0) | arg_0, false, global1.x | !global1.x), select(_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a - -1010f))), false, arg_0), any(select(!vec4<bool>(true, true, false, arg_0), select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(true, false, arg_0, false), vec4<bool>(false, arg_0, true, global1.x)), vec4<bool>(true, arg_0, global1.x, true), any(vec4<bool>(false, global1.x, global1.x, arg_0))), !all(vec4<bool>(arg_0, true, global1.x, global1.x)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = vec3<u32>(15440u, arg_1.x, countOneBits(_wgslsmith_mult_u32(arg_1.x >> (0u % 32u), 15633u)));
    global0 = Struct_1(-2147483647i);
    var_0 = _wgslsmith_mod_vec3_u32(~select(vec3<u32>(4294967295u ^ var_0.x, reverseBits(27728u), _wgslsmith_dot_vec2_u32(vec2<u32>(47812u, var_0.x), vec2<u32>(var_0.x, var_0.x))), reverseBits(vec3<u32>(0u, arg_1.x, arg_1.x)) & firstTrailingBit(vec3<u32>(4294967295u, 0u, 0u)), !select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, false, true), vec3<bool>(false, false, false))), ~(~abs(vec3<u32>(1u, arg_1.x, arg_1.x))));
    global0 = Struct_1(-6518i);
    var var_1 = Struct_3(var_0.zx, vec2<u32>(0u, var_0.x), min(~vec4<i32>(2147483647i, 2147483647i, global0.a, 80120i) & vec4<i32>(94207i, -2147483647i, u_input.a.x, 7075i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 10754i, u_input.a.x) << (vec4<u32>(1u, arg_1.x, 33777u, arg_1.x) % vec4<u32>(32u)), vec4<i32>(1i, u_input.a.x, -1711i, 18494i))) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, -21218i, 1i) << (vec4<u32>(var_0.x, 1u, 4294967295u, arg_1.x) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(global0.a, 2147483647i, u_input.a.x, 0i))), vec4<i32>(-13663i, -11107i, firstTrailingBit(-39965i), ~global0.a)));
    return 1i;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_3(~(firstLeadingBit(arg_0.d.xz & vec2<u32>(1u, arg_0.d.x)) >> (~vec2<u32>(arg_0.b, 40117u) % vec2<u32>(32u))), vec2<u32>(1u, 16867u), vec4<i32>(func_4(select(!vec3<bool>(true, global1.x, global1.x), func_2(true, vec4<u32>(arg_0.d.x, arg_0.b, 41099u, arg_0.d.x), 1u), global1.x), _wgslsmith_sub_vec2_u32(arg_0.d.wy, arg_0.d.xw) << ((arg_0.d.yy & vec2<u32>(arg_0.d.x, 4300u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1000f)))), 29948i, global0.a, 1i));
    global1 = !select(func_2(true, vec4<u32>(_wgslsmith_sub_u32(arg_0.b, 0u), ~var_0.a.x, _wgslsmith_clamp_u32(51926u, 0u, 1u), var_0.a.x), ~_wgslsmith_clamp_u32(arg_0.b, 0u, 1u)), select(vec3<bool>(global1.x, true, true), vec3<bool>(true, global1.x | global1.x, false), func_2(func_2(global1.x, arg_0.d, 15647u).x, arg_0.d, abs(arg_0.b))), func_2(any(vec4<bool>(global1.x, global1.x, false, true)) && all(vec3<bool>(global1.x, false, true)), arg_0.d, arg_0.b).x);
    var var_1 = !(!(!select(select(vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, global1.x), true), vec3<bool>(global1.x, global1.x, global1.x), true)));
    let var_2 = var_0;
    global0 = Struct_1(1i);
    return _wgslsmith_f_op_f32(floor(-1036f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(true, !global1.x, (_wgslsmith_f_op_f32(f32(-1f) * -671f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1664f)) + _wgslsmith_f_op_f32(341f + -948f))) | false);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-446f, 625f))))))), -655f);
    global0 = Struct_1(~23667i);
    global2 = array<Struct_2, 27>();
    global1 = !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, any(select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), global1.xz))), any(!select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x)));
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(-467f, 1u, vec4<i32>(u_input.a.x, 231i, 0i, u_input.a.x), vec4<u32>(0u, 4294967295u, 0u, 3091u)), vec2<i32>(-8237i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1777f, 1769f)), _wgslsmith_clamp_i32(-15480i, global0.a, global0.a) == min(u_input.a.x, global0.a)))), _wgslsmith_f_op_f32(467f - -1485f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f - -247f) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2044f, -810f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)))), -822f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.zyy)) - _wgslsmith_f_op_vec3_f32(var_1.xwz + var_1.yzy)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.zzw))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, 1410f, 1090f)))))), ~(~1u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -283f, var_1.x))))))))), u_input.a >> (select(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 25927u, 4294967295u), vec3<u32>(23792u, 7086u, 4294967295u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 80021u, 37814u), vec3<u32>(1u, 6153u, 1u)), reverseBits(vec3<u32>(130751u, 0u, 72376u)), vec3<u32>(44757u, 1u, 45298u)), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(false, false, false), vec3<bool>(true, false, global1.x), true))) % vec3<u32>(32u)));
}

