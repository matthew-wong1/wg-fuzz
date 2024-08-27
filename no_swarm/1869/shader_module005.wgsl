struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_4, 28>;

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    global1 = -vec2<i32>(_wgslsmith_div_i32(-abs(-1i), 0i << (~arg_0.x % 32u)), ~(~1i));
    global0 = Struct_2(global0.a, Struct_1(global0.c.a, global0.c.b, _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_1, 15617i), abs(global0.a.c))), Struct_1(global0.c.a, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, u_input.a << (global0.b.b.x % 32u)), vec3<u32>(1u << (1u % 32u), abs(4294967295u), 0u)), global0.a.c));
    let var_0 = reverseBits(vec2<i32>(16164i, _wgslsmith_sub_i32(~u_input.b, ~global0.c.c.x))) | vec2<i32>(~_wgslsmith_mult_i32(44282i ^ global0.c.c.x, 2147483647i), -_wgslsmith_mod_i32(i32(-1i) * -40338i, -global1.x));
    let var_1 = !(false | (false & any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    global3 = array<vec2<bool>, 4>();
    return ~(i32(-1i) * -(-6729i & ~arg_1));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> vec3<f32> {
    global1 = vec2<i32>(0i & func_3(~vec2<u32>(1u, 0u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(33120u, 12560u)) % vec2<u32>(32u)), -(~(-2147483647i))), -1i);
    let var_0 = Struct_2(global0.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.a - vec3<f32>(1000f, global0.c.a.x, global0.a.a.x)) - _wgslsmith_f_op_vec3_f32(-global0.c.a)), abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(41523u, global0.a.b.x, global0.c.b.x), vec3<u32>(u_input.a, 36164u, 22530u))), ~vec2<i32>(-13271i, abs(u_input.b))), global0.a);
    global2 = array<Struct_4, 28>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(var_0.a.a.xx, vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), -705f)), any(select(select(vec2<bool>(true, arg_1), global3[_wgslsmith_index_u32(arg_0, 4u)], arg_1), select(global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(1u, 4u)], arg_1), all(vec3<bool>(false, arg_1, true)))))), firstTrailingBit(var_0.b.c >> (reverseBits(~global0.a.b.yx) % vec2<u32>(32u))), 1i, !(!(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_f32(min(-1209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f * 1134f)))));
    let var_2 = any(select(vec2<bool>(true, var_1.d.x), !vec2<bool>(arg_1, true | arg_1), var_1.d.zz));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1770f - -841f))), -614f, -186f);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: vec3<i32>) -> f32 {
    let var_0 = global0.c.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(~u_input.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1541f + arg_2.b.a.x)))), ~(~vec3<u32>(reverseBits(global0.b.b.x), 54824u, u_input.a)), arg_2.b.c);
    global3 = array<vec2<bool>, 4>();
    global1 = abs(countOneBits(vec2<i32>(_wgslsmith_mod_i32(u_input.b << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-20759i, var_1.c.x, arg_2.b.c.x, arg_1), vec4<i32>(-2147483647i, arg_1, arg_1, arg_2.b.c.x))), _wgslsmith_mod_i32(1i | global1.x, -33732i))));
    var var_2 = reverseBits(vec2<i32>(-22039i, global0.b.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(400f, _wgslsmith_f_op_f32(min(-472f, _wgslsmith_f_op_f32(select(1237f, -1781f, false)))), true)) + _wgslsmith_f_op_f32(step(-1034f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 879f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.b.x;
    let var_1 = firstLeadingBit(~(~(~vec3<i32>(-43611i, u_input.b, 0i) >> (global0.b.b % vec3<u32>(32u)))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(1188f, -2147483647i, Struct_4(vec3<f32>(global0.a.a.x, -1616f, -776f), global0.b), var_1)), _wgslsmith_f_op_f32(global0.b.a.x + -177f))), _wgslsmith_f_op_f32(f32(-1f) * -959f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.a.zy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(448f, 657f)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))))))), ~(~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, global1.x) >> (vec2<u32>(u_input.a, 68396u) % vec2<u32>(32u)), -var_1.zz)), global1.x & reverseBits(min(u_input.b, -1i) >> (4294967295u % 32u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, select(true, false, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(101f))), 117f))));
    let var_3 = ~firstTrailingBit(~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), global0.c.b.yz));
    global2 = array<Struct_4, 28>();
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a.a, global0.b.a, var_2.d))), global0.c);
    let var_5 = var_2.d.x;
    var var_6 = -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.c, var_2.c << (u_input.a % 32u)), var_1.zy), var_1.xy);
    global2 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer((countOneBits(~vec2<u32>(54803u, global0.c.b.x)) ^ vec2<u32>(var_4.b.b.x, 1u)) ^ (firstLeadingBit(max(var_3, var_3)) >> (global0.a.b.yy % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.e * 1132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.a.x - 758f)), -380f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + 2237f), global0.b.a.x, 505f))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20848i, 2147483647i, global1.x), var_1), -global1.x, 62356i, global1.x) >> (~vec4<u32>(var_4.b.b.x, u_input.a, 30775u, global0.a.b.x) % vec4<u32>(32u)), -(_wgslsmith_mod_vec4_i32(vec4<i32>(-16219i, -13914i, -2147483647i, 2147483647i), vec4<i32>(var_4.b.c.x, global0.b.c.x, 0i, global0.a.c.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 22142u, 22564u), vec4<u32>(68267u, var_4.b.b.x, var_4.b.b.x, var_4.b.b.x)) % vec4<u32>(32u)))), 223f, _wgslsmith_mod_i32(2147483647i, ~var_1.x) | var_4.b.c.x);
}

