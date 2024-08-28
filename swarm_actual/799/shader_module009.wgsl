struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec2<i32> {
    global2 = array<Struct_1, 16>();
    let var_0 = Struct_4(arg_1);
    let var_1 = Struct_3(_wgslsmith_sub_i32(u_input.a, 0i), _wgslsmith_sub_vec3_i32(u_input.c.zwy, vec3<i32>(~countOneBits(var_0.a.b), -arg_1.b, firstTrailingBit(-global1.x))), _wgslsmith_div_u32(reverseBits(_wgslsmith_sub_u32(53050u, 39599u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 0u, 3286u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(0u, 0u, 4294967295u, 80429u))));
    let var_2 = Struct_1(abs(_wgslsmith_mod_vec3_i32(select(var_1.b, u_input.c.www, select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), ~u_input.c.xwy)), abs(-vec2<i32>(4793i, global1.x) >> (min(firstTrailingBit(vec2<u32>(var_1.c, 1u)), vec2<u32>(1u, var_1.c)) % vec2<u32>(32u))), false, countOneBits(_wgslsmith_mod_i32(1i & -arg_1.b, reverseBits(0i))));
    let var_3 = arg_1.a.x;
    return vec2<i32>(-36113i, global1.x);
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_1, 16>();
    global1 = select(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(global1.x, -37033i)), u_input.e), _wgslsmith_mult_vec2_i32(func_3(-1089f, Struct_2(vec3<f32>(206f, -309f, -132f), 2147483647i)), _wgslsmith_div_vec2_i32(u_input.e, _wgslsmith_clamp_vec2_i32(u_input.e, u_input.c.zx, vec2<i32>(global1.x, u_input.c.x))))), _wgslsmith_div_vec2_i32(abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(global1.x, u_input.d), ~vec2<i32>(-1i, 1i))), vec2<i32>(-32250i, u_input.c.x)), false);
    let var_0 = true;
    let var_1 = -983f;
    global0 = array<vec2<u32>, 13>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(select(1710f, -782f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), var_1))), u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    global0 = array<vec2<u32>, 13>();
    global2 = array<Struct_1, 16>();
    global1 = -select(abs(~(~u_input.c.yw)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c | u_input.c, countOneBits(vec4<i32>(1i, 26314i, global1.x, 26361i))), min(global1.x, _wgslsmith_clamp_i32(8639i, global1.x, -1i))), !arg_0.c);
    var var_0 = ~(~vec3<u32>(1u, firstTrailingBit(4294967295u), 4294967295u) << (~firstTrailingBit(vec3<u32>(1u, 0u, 31015u)) % vec3<u32>(32u)));
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.wz, _wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, -6858i), arg_0.b), (~vec2<i32>(31791i, 0i) << (vec2<u32>(var_0.x, 36768u) % vec2<u32>(32u))) & u_input.c.wz), u_input.c.xx);
    return false;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    return Struct_3(_wgslsmith_add_i32(~max(arg_0.x, u_input.a ^ 16806i), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.x, u_input.c.x), _wgslsmith_mod_i32(1i, -1i))), select(~countOneBits(arg_0) << (~(~vec3<u32>(65832u, 0u, 1u)) % vec3<u32>(32u)), countOneBits(_wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(11666i, u_input.a, u_input.a))), func_4(global2[_wgslsmith_index_u32(firstTrailingBit(~53595u), 16u)], func_2(), vec4<bool>(true, true, true, true))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(u_input.d >> (4294967295u % 32u)), 0i, -2147483647i), u_input.c.wwx << (~(~vec3<u32>(0u, 14011u, 4294967295u)) % vec3<u32>(32u)), ~u_input.c.zxy));
    let var_1 = min(vec3<u32>(var_0.c, 4294967295u, var_0.c), ~(~vec3<u32>(var_0.c, var_0.c, func_1(u_input.c.zzz).c)));
    let var_2 = select(true, true, true);
    let var_3 = vec4<i32>(-((global1.x ^ ~18909i) & var_0.a), func_3(1015f, Struct_2(vec3<f32>(-522f, _wgslsmith_f_op_f32(max(228f, 120f)), -844f), var_0.a)).x, u_input.e.x, -14660i);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-718f + 438f), -1112f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(305f, 1529f) - vec2<f32>(433f, -649f)), vec2<f32>(1f, 1f), !var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.x, -var_0.b.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(1229f, 1156f)), var_4.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, var_4.x))), select(vec2<bool>(true, var_2), vec2<bool>(true, true), !vec2<bool>(false, var_2)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(868f, _wgslsmith_f_op_f32(var_4.x - 261f))))));
}

