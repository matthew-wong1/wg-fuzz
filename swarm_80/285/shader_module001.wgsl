struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-56615i, 2147483647i), vec2<i32>(2147483647i, -28547i), vec2<i32>(0i, 0i), vec2<i32>(36782i, 2147483647i), vec2<i32>(16689i, 1i), vec2<i32>(-32712i, -9590i), vec2<i32>(36397i, -44040i), vec2<i32>(0i, -21394i), vec2<i32>(i32(-2147483648), 46040i), vec2<i32>(-19498i, 0i), vec2<i32>(37993i, 12730i), vec2<i32>(2147483647i, 1i), vec2<i32>(16076i, 53221i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(21518i, 48294i));

var<private> global1: u32;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(-961i), Struct_2(-33524i), Struct_2(-9799i), Struct_2(-1i), Struct_2(20506i), Struct_2(-49923i), Struct_2(-20552i), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(-39925i), Struct_2(0i), Struct_2(34169i), Struct_2(1i), Struct_2(-72810i), Struct_2(1i), Struct_2(-1i), Struct_2(0i), Struct_2(1i), Struct_2(1i), Struct_2(19848i), Struct_2(0i), Struct_2(0i), Struct_2(1i), Struct_2(-1i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(2147483647i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    return u_input.c.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    var var_0 = 2147483647i;
    var_0 = reverseBits(arg_1.a);
    global2 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(~(u_input.c.x | 4294967295u), 0u)), ~(~vec2<u32>(0u, firstLeadingBit(u_input.c.x))));
    var var_2 = 1000f;
    return ~_wgslsmith_dot_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b, arg_2.x, u_input.b), vec4<i32>(2147483647i, arg_1.a, -10752i, 46010i)), max(vec4<i32>(-1i, arg_1.a, arg_2.x, arg_2.x), vec4<i32>(arg_1.a, u_input.a, arg_1.a, arg_2.x))), vec4<i32>(arg_1.a, reverseBits(arg_1.a), 41948i, _wgslsmith_mult_i32(arg_2.x, arg_1.a))) ^ firstLeadingBit((~(-40800i) | _wgslsmith_dot_vec3_i32(arg_2, arg_2)) | -5766i);
}

fn func_2(arg_0: i32) -> StorageBuffer {
    global0 = array<vec2<i32>, 15>();
    var var_0 = Struct_1((vec3<i32>(-60481i | arg_0, ~1i, 1731i) & _wgslsmith_add_vec3_i32(vec3<i32>(-23029i, u_input.b, arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, 2147483647i), vec3<i32>(3989i, arg_0, u_input.a)))) & vec3<i32>(2147483647i, 1i, _wgslsmith_mod_i32(func_3(vec3<f32>(2249f, -585f, 759f), Struct_2(2147483647i), vec3<i32>(arg_0, u_input.b, arg_0)), 0i)));
    var var_1 = Struct_1(var_0.a >> ((vec3<u32>(u_input.c.x << (u_input.c.x % 32u), u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.c.x, ~u_input.c.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = vec3<u32>(u_input.c.x, ~44735u, 54440u);
    let var_3 = select(var_0.a.x, _wgslsmith_add_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-8697i, arg_0), var_1.a.zz)), -select(_wgslsmith_div_i32(arg_0, 1i), ~var_1.a.x, any(vec2<bool>(false, false)))), (!select(false, false, false) & true) && select(select(true, true, any(vec3<bool>(false, false, true))), all(vec3<bool>(false, true, false)) & all(vec2<bool>(true, true)), any(vec3<bool>(false, true, true))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f + _wgslsmith_div_f32(1166f, -280f)) - _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 27>();
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~43299u, u_input.c.x, _wgslsmith_add_u32(u_input.c.x, 36678u)), _wgslsmith_clamp_vec3_u32(u_input.c.zxz, u_input.c.wxz, u_input.c.yyy)), func_1(max(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.b, u_input.b)), countOneBits(vec3<i32>(1i, u_input.a, 24060i)), vec3<bool>(false, true, true)), -vec3<i32>(u_input.b, u_input.a, u_input.a)), _wgslsmith_f_op_f32(661f - 1f), ~(~(-vec2<i32>(u_input.a, -9965i))), true));
    global1 = _wgslsmith_div_u32(24704u, 4294967295u);
    global1 = u_input.c.x;
    global0 = array<vec2<i32>, 15>();
    let x = u_input.a;
    s_output = func_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 1i, u_input.a), vec4<i32>(1223i, -1i, u_input.b, u_input.b)) & -(-u_input.b & min(u_input.a, u_input.a)));
}

