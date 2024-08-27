struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: bool;

var<private> global2: u32 = 35970u;

var<private> global3: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(0u, 1u, 25943u), vec3<u32>(0u, 0u, 0u), vec3<u32>(8066u, 1u, 4294967295u), vec3<u32>(37659u, 60209u, 0u), vec3<u32>(5877u, 4294967295u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>) -> i32 {
    let var_0 = any(arg_0.yy);
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -194f, -1208f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-893f, 1366f, 1385f), vec3<f32>(arg_1, arg_1, arg_1), arg_0))))))));
    var var_2 = Struct_1(select(select(!(!vec4<bool>(true, arg_2.x, arg_0.x, arg_2.x)), !(!vec4<bool>(var_0, arg_2.x, var_0, arg_0.x)), _wgslsmith_f_op_f32(abs(-364f)) <= _wgslsmith_f_op_f32(step(560f, 420f))), select(!(!vec4<bool>(arg_2.x, var_0, arg_0.x, arg_2.x)), vec4<bool>(!var_0, true, true, false), !select(vec4<bool>(var_0, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, arg_2.x))), !(!vec4<bool>(arg_0.x, arg_0.x, true, true))), ~(u_input.a ^ ~u_input.a), vec4<i32>(-(~(-1i)), -_wgslsmith_sub_i32(i32(-1i) * -51075i, min(-1i, 64688i)), _wgslsmith_add_i32(0i, ~(-15984i)) << (0u % 32u), ~(-(i32(-1i) * -1705i))));
    let var_3 = Struct_1(select(select(select(select(vec4<bool>(var_0, false, true, true), vec4<bool>(arg_2.x, true, arg_2.x, var_2.a.x), var_2.a), vec4<bool>(arg_0.x, arg_2.x, arg_2.x, false), var_2.a), var_2.a, var_2.a), var_2.a, select(var_0, all(vec4<bool>(true, arg_0.x, arg_0.x, arg_2.x)), arg_2.x)), ~23319u, countOneBits(vec4<i32>(reverseBits(1i), -(69268i & var_2.c.x), 27598i, var_2.c.x)));
    global1 = 1334f < arg_1;
    return var_2.c.x << (4294967295u % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> bool {
    var var_0 = select(~firstTrailingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, 1i), vec3<i32>(-1i, arg_3.x, -1i))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-11396i, arg_3.x, -1i)), vec3<i32>(arg_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_3.x, arg_3.x, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, arg_3.x, arg_3.x), vec4<i32>(arg_3.x, arg_3.x, -1i, 2147483647i))), arg_3.x)), -2410i >= func_3(!arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(715f, 199f))), select(arg_0.xy, !arg_0.zy, !arg_1.x)));
    let var_1 = Struct_1(!vec4<bool>(arg_0.x, any(vec4<bool>(arg_1.x, arg_1.x, true, true)), var_0.x >= (arg_3.x | arg_3.x), any(vec2<bool>(arg_1.x, arg_1.x))), firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 0u)), ~arg_2) | 1u), abs(min(vec4<i32>(select(1i, var_0.x, true), arg_3.x, -arg_3.x, -51612i), -vec4<i32>(-2147483647i, 0i, 5121i, -1i))));
    var var_2 = countOneBits(vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(8197u, arg_2.x, var_1.b)), _wgslsmith_div_vec3_u32(global3[_wgslsmith_index_u32(var_1.b, 5u)], vec3<u32>(4294967295u, 12319u, arg_2.x))), ~_wgslsmith_add_u32(1u, var_1.b)), ~firstLeadingBit(_wgslsmith_div_u32(1u, 39796u))));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(~var_2.x, ~(~countOneBits(4294967295u)), _wgslsmith_sub_u32(var_1.b, u_input.a)), ~(global3[_wgslsmith_index_u32(arg_2.x, 5u)] >> (_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(1u, arg_2.x, var_2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_1.b, var_1.b), vec3<u32>(u_input.a, arg_2.x, arg_2.x), global3[_wgslsmith_index_u32(arg_2.x, 5u)])) % vec3<u32>(32u))));
    let var_4 = vec2<i32>(-1i) * -(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(var_0.zz, arg_3)) >> ((~var_3.zx & select(var_3.yy, vec2<u32>(0u, 38813u), vec2<bool>(false, true))) % vec2<u32>(32u)));
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<i32> {
    let var_0 = select(!func_2(arg_1.a.wxx, arg_1.a, vec2<u32>(u_input.a, _wgslsmith_clamp_u32(72946u, 0u, 39567u)), -(vec2<i32>(arg_0.x, 30500i) | vec2<i32>(-38550i, -18151i))), arg_1.a.x == arg_1.a.x, any(select(arg_1.a.yx, select(vec2<bool>(arg_1.a.x, arg_1.a.x), select(vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.a.xx, vec2<bool>(arg_1.a.x, arg_1.a.x)), !vec2<bool>(arg_1.a.x, arg_1.a.x)), vec2<bool>(true, true))));
    global1 = true;
    global2 = ~63968u;
    var var_1 = abs(~max(vec3<i32>(-arg_0.x, 39972i, -2147483647i), max(~arg_0, vec3<i32>(-1i, 11559i, 33362i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-992f - 569f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -341f)))));
    return vec2<i32>(559i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_0.x, var_1.x, -1i), arg_1.c.yxy) << ((~global3[_wgslsmith_index_u32(arg_2.x, 5u)] << (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 69203u, 1u), vec3<u32>(8683u, 4294967295u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-2147483647i, arg_0.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), func_1(-vec3<i32>(_wgslsmith_mult_i32(2147483647i, 1i), 2147483647i >> (u_input.a % 32u), -1i), Struct_1(vec4<bool>(true, true, false, any(vec4<bool>(false, true, false, true))), ~_wgslsmith_div_u32(u_input.a, 0u), vec4<i32>(_wgslsmith_div_i32(-1i, 1i), 2147483647i, ~(-5187i), 1i)), ~(~vec2<u32>(u_input.a, 32202u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1628f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1436f * -608f)))), ~u_input.a ^ (1u << (~firstTrailingBit(u_input.a) % 32u)));
}

