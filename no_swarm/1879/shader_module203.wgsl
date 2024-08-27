struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32> = vec3<f32>(-583f, 815f, 1373f);

var<private> global2: u32 = 1u;

var<private> global3: Struct_2 = Struct_2(Struct_1(0u, vec2<i32>(0i, -1i), vec4<u32>(4294967295u, 2837u, 25049u, 0u), vec2<bool>(false, false)), vec4<i32>(26459i, -1i, -1i, 2147483647i), Struct_1(14037u, vec2<i32>(14195i, -19147i), vec4<u32>(33830u, 1u, 4294967295u, 11068u), vec2<bool>(false, false)), i32(-2147483648));

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(19349u, vec2<i32>(-1i, -72705i), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_1(59365u, vec2<i32>(i32(-2147483648), 0i), vec4<u32>(27291u, 4294967295u, 0u, 17803u), vec2<bool>(true, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1101f, global1.x))))));
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = true;
    global4 = array<Struct_1, 2>();
    let var_0 = global3.a;
    var var_1 = func_2();
    global0 = (false | var_0.d.x) | !global3.c.d.x;
    return -2147483647i;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    global2 = u_input.c;
    var var_0 = Struct_2(Struct_1(1u, arg_2, reverseBits(~global3.a.c | vec4<u32>(u_input.c, arg_3, u_input.b.x, arg_3)), vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_mod_vec4_i32(global3.b, global3.b), Struct_1(select(global3.a.c.x, _wgslsmith_dot_vec2_u32(~global3.c.c.wz, vec2<u32>(11340u, 33842u)), !(false && arg_1.x)), u_input.a.xy, select(vec4<u32>(57760u, 29075u, global3.a.a, _wgslsmith_dot_vec4_u32(global3.c.c, vec4<u32>(4294967295u, u_input.c, 20873u, 0u))), global3.a.c, vec4<bool>(global1.x < global1.x, false, all(arg_1.xzw), any(arg_1.wwx))), vec2<bool>(global1.x > _wgslsmith_f_op_f32(global1.x + -569f), true)), 57795i);
    var var_1 = Struct_2(global3.c, -var_0.b, var_0.a, _wgslsmith_mult_i32(global3.c.b.x, 39794i));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 817f, 437f) + vec3<f32>(global1.x, global1.x, global1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -1000f, global1.x), vec3<f32>(global1.x, global1.x, 386f), true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -343f, 162f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(-179f)), _wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-542f, global1.x, -736f)))))));
    global2 = ~(~var_1.a.c.x);
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~(var_1.a.c >> (vec4<u32>(30451u, var_1.c.a, var_0.c.c.x, 108532u) % vec4<u32>(32u))), vec4<u32>(2409u << (u_input.b.x % 32u), _wgslsmith_sub_u32(0u, global3.c.c.x), countOneBits(0u), ~1u)), vec2<i32>(func_1(Struct_3(vec3<f32>(global1.x, global1.x, 1136f))), _wgslsmith_add_i32(u_input.a.x, arg_2.x) << (global3.c.c.x % 32u)), reverseBits(vec4<u32>(arg_3, arg_3, 4u, global3.a.a)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.a, var_1.a.c.x, 1u, arg_3), vec4<u32>(0u, var_1.c.a, 91002u, 0u)) % vec4<u32>(32u)), !(!select(var_1.c.d, var_0.c.d, vec2<bool>(true, true)))), global3.b ^ _wgslsmith_add_vec4_i32(global3.b, abs(min(vec4<i32>(arg_2.x, var_0.a.b.x, var_0.b.x, 1i), vec4<i32>(global3.a.b.x, global3.a.b.x, -1i, var_1.c.b.x)))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.c.x, u_input.b.x, 0u, abs(6678u)), vec4<u32>(1u, u_input.c, 4294967295u, ~0u)), _wgslsmith_div_vec2_i32(u_input.a.zy, vec2<i32>(0i, _wgslsmith_add_i32(0i, -22997i))), vec4<u32>(4294967295u, abs(countOneBits(1u)), 11930u, 39622u), select(global3.a.d, select(vec2<bool>(false, var_1.c.d.x), vec2<bool>(false, arg_1.x), select(vec2<bool>(false, global3.a.d.x), global3.c.d, true)), (global3.c.d.x && false) & arg_1.x)), 23877i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    let var_1 = global3.c.d.x;
    let var_2 = func_3(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(var_0, var_0)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, var_0) ^ vec2<i32>(var_0, u_input.a.x), _wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(-2147483647i, 0i))), _wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, global3.b.x)))), !vec4<bool>(_wgslsmith_f_op_f32(global1.x - -1358f) > _wgslsmith_f_op_f32(global1.x * -1485f), global3.a.d.x, all(!vec3<bool>(global3.a.d.x, true, false)), true), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(var_0), func_1(Struct_3(vec3<f32>(global1.x, global1.x, global1.x))), ~(-25324i), i32(-1i) * -10044i), ~(~global3.b)), -2147483647i), 2763u);
    let var_3 = _wgslsmith_mult_vec4_u32(firstLeadingBit(var_2.a.c) >> (vec4<u32>(4294967295u, var_2.c.a, 18613u, ~4294967295u) % vec4<u32>(32u)), vec4<u32>(var_2.c.c.x, 1u, 1u, ~(~1u))) << (~vec4<u32>(abs(0u), _wgslsmith_add_u32(~var_2.c.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(12604u, 69820u, 1u, 8989u), vec4<u32>(1u, 4294967295u, 17789u, global3.a.a))), (u_input.c >> (0u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.a.a), global3.a.c.zw) % 32u), ~1u) % vec4<u32>(32u));
    let var_4 = _wgslsmith_add_vec4_i32(-vec4<i32>(min(-2147483647i, var_0), global3.c.b.x >> (var_3.x % 32u), ~(-47519i), var_2.c.b.x), global3.b) >> ((var_2.c.c >> ((firstLeadingBit(var_3 << (var_2.a.c % vec4<u32>(32u))) << (reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(31320u, var_2.a.a, 4294967295u, global3.c.a), vec4<u32>(var_2.a.c.x, global3.a.a, 1u, var_2.a.c.x), vec4<u32>(1u, 4294967295u, var_2.a.a, var_2.a.a))) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-var_4.x), firstLeadingBit(firstTrailingBit(~var_2.d)), var_0 | _wgslsmith_dot_vec4_i32(~var_2.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 23348i, u_input.a.x, 2147483647i), vec4<i32>(9896i, -23916i, 1i, -2147483647i))), u_input.a.x));
}

