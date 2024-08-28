struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(33300i, 37047i);

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<Struct_2, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32) -> vec4<u32> {
    global1 = array<vec4<f32>, 7>();
    global2 = array<Struct_2, 8>();
    var var_0 = -1i;
    var var_1 = vec2<u32>(arg_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4787u ^ arg_2, ~arg_2) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 4294967295u, arg_2), vec3<u32>(arg_2, arg_0.c.x, arg_0.c.x)), _wgslsmith_mod_u32(4294967295u, arg_2)), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(arg_0.c.x, arg_0.c.x), vec2<u32>(1872u, 61593u), vec2<bool>(arg_0.a, arg_0.a)), ~arg_0.c.zy)));
    var_0 = ~(-abs(_wgslsmith_mod_i32(47i, -1i << (arg_0.c.x % 32u))));
    return ~vec4<u32>(1u, arg_2, _wgslsmith_add_u32(select(~39466u, select(4294967295u, 1u, false), arg_0.a), abs(arg_0.c.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.c.x) & vec3<u32>(2146u, 4294967295u, 13226u), arg_0.c), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.c.xz, vec2<u32>(1u, arg_2)), arg_0.c.xz ^ vec2<u32>(0u, arg_0.c.x))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<bool> {
    global1 = array<vec4<f32>, 7>();
    return !(!(!vec3<bool>(!arg_2.d.x, arg_2.d.x == false, true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    let var_0 = arg_1.a.a.x;
    let var_1 = vec4<bool>(arg_1.a.e.x, true, select(arg_1.a.e.x, !any(func_3(vec3<i32>(2147483647i, arg_0.x, -21153i), 3891u, Struct_2(Struct_1(vec4<u32>(1u, var_0, arg_1.a.a.x, var_0), arg_1.a.a, arg_1.c, arg_1.a.d, arg_1.d), arg_1.b, vec3<f32>(-383f, 605f, arg_2), vec2<bool>(false, arg_1.d.x)), arg_1.a.b.zzx)), any(!(!vec2<bool>(arg_1.d.x, true)))), arg_1.a.e.x);
    let var_2 = var_1;
    let var_3 = !var_2;
    let var_4 = Struct_4(Struct_3(var_2.x, arg_0, ~(vec3<u32>(80374u, var_0, arg_1.a.b.x) >> (~vec3<u32>(1u, arg_1.a.b.x, arg_1.a.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, arg_2))));
    return _wgslsmith_f_op_vec3_f32(select(arg_1.b.xzx, arg_1.a.c, any(var_1.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<u32>(_wgslsmith_div_u32(4294967295u, 72548u), 8563u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(43471u, 1u), vec2<u32>(82569u, 59708u))) << (~vec4<u32>(1u, 53621u, 1u, 65463u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(func_1(Struct_3(false, vec2<i32>(global0.x, global0.x), vec3<u32>(30098u, 22499u, 0u), 917f), vec2<f32>(445f, -931f), 4904u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, global0.x), vec3<i32>(u_input.a, u_input.a, 2147483647i)), ~global0.x, _wgslsmith_mod_i32(1i, 48638i)) == ~(-1i)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(~52992u, 1u, 4294967295u, 1u), ~(~vec4<u32>(1u, 2053u, 53030u, 23393u)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1326f, 1000f, 1686f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(374f, -779f, 1406f), vec3<f32>(-1479f, 342f, 207f))), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(global0.x, 1i) >> (vec2<u32>(48964u, 55654u) % vec2<u32>(32u)), Struct_2(Struct_1(vec4<u32>(0u, 26958u, 0u, 38799u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec3<f32>(-151f, 1279f, -823f), vec2<i32>(0i, u_input.a), vec2<bool>(false, true)), global1[_wgslsmith_index_u32(54180u, 7u)], vec3<f32>(4263f, 1162f, 1121f), vec2<bool>(true, false)), _wgslsmith_f_op_f32(select(1121f, -267f, false)))))), ~vec2<i32>(_wgslsmith_mult_i32(select(global0.x, 0i, false), ~5261i), u_input.a), vec2<bool>(any(vec4<bool>(true, true, true, true)), select(true, false, true)));
    global2 = array<Struct_2, 8>();
    global0 = min(var_0.d, abs(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a) | vec2<i32>(global0.x, u_input.a), ~var_0.d))) << (reverseBits(vec2<u32>(21895u, var_0.a.x)) % vec2<u32>(32u));
    var var_1 = Struct_3(var_0.e.x, var_0.d, var_0.a.xxz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(454f))), var_0.c.x, false))));
    global0 = vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-10150i, u_input.a), var_1.b.x ^ -2147483647i), max(_wgslsmith_mult_i32(4375i, var_0.d.x), var_0.d.x)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_1.b.x, 0i)), (vec2<i32>(u_input.a, -36315i) | var_1.b) << (~vec2<u32>(38678u, 4294967295u) % vec2<u32>(32u)))));
    global2 = array<Struct_2, 8>();
    global1 = array<vec4<f32>, 7>();
    var_1 = Struct_3(true, ~(~(-firstLeadingBit(vec2<i32>(var_0.d.x, global0.x)))), var_0.b.yxz, _wgslsmith_f_op_f32(sign(var_0.c.x)));
    let var_2 = ~var_0.a.yyz << (~(~var_0.b.zzz) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_mult_u32(countOneBits(2645u), ~var_0.a.x)), _wgslsmith_mult_u32(abs(12343u) >> (min(var_1.c.x, 1u) % 32u), 1u)), global0.x, vec3<f32>(1395f, -379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))), 61301u << (~(var_1.c.x ^ var_0.b.x) % 32u));
}

