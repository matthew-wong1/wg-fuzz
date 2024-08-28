struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, 0i));

var<private> global2: Struct_1 = Struct_1(false, 0i);

var<private> global3: Struct_2;

var<private> global4: array<Struct_4, 5>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = u_input.d;
    return global3.a.b > -_wgslsmith_add_i32(_wgslsmith_add_i32(-var_0.x, _wgslsmith_div_i32(global3.a.b, 1i)), _wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(global3.a.b, u_input.d.x))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-249f, 1957f, 119f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(139f)), _wgslsmith_f_op_f32(f32(-1f) * -399f))))))));
    let var_1 = ~global0.x << (_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(abs(vec4<u32>(28857u, 0u, 4294967295u, 1u))) >> (_wgslsmith_add_vec4_u32(u_input.a, max(u_input.a, u_input.a)) % vec4<u32>(32u))) % 32u);
    global3 = Struct_2(global1[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_clamp_u32(global0.x, _wgslsmith_sub_u32(select(32465u, global0.x, arg_1), ~11513u), global0.x)), 1u)], !(!global3.b));
    let var_2 = Struct_1(!any(global3.b.xy), -14402i);
    let var_3 = Struct_4(Struct_1(true, 0i | _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.x, global2.b), -global2.b)));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<u32> {
    global4 = array<Struct_4, 5>();
    global4 = array<Struct_4, 5>();
    global2 = Struct_1(select(!global2.a, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -833f) - vec3<f32>(-185f, -588f, arg_1.x))), func_3(Struct_1(all(vec4<bool>(arg_0.a, global3.b.x, arg_0.a, global3.a.a)), i32(-1i) * -1i), abs(u_input.c.x) != abs(4294967295u), min(u_input.d.xy, vec2<i32>(global3.a.b, u_input.d.x)) ^ vec2<i32>(arg_0.b, global3.a.b))), u_input.d.x);
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(245f * 1344f), _wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2289f) + arg_1.x))))));
    var var_1 = global3.b;
    return u_input.a.zzx & ~countOneBits(vec3<u32>(u_input.c.x, ~global0.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32((u_input.d & u_input.d) >> ((min(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), u_input.a.xxz), func_1(global1[_wgslsmith_index_u32(3824u, 1u)], vec4<f32>(-813f, -680f, -268f, -2158f))) >> (~_wgslsmith_add_vec3_u32(u_input.a.www, vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), -select(u_input.d, vec3<i32>(u_input.d.x >> (1u % 32u), max(-2147483647i, -1i), 2382i), true));
    let var_1 = 14283u < func_1(Struct_1(false & any(vec2<bool>(false, global2.a)), global2.b), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(122f)), _wgslsmith_f_op_f32(f32(-1f) * -520f), -1000f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(304f, -1523f, -1544f, 1251f), vec4<f32>(1333f, 296f, 282f, 877f))))))).x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(588f - -543f))))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1035f * -327f), 175f)));
    let var_3 = vec4<u32>(~(~_wgslsmith_add_u32(1u, ~74661u)), global0.x, ~(global0.x & 0u), global0.x);
    let var_4 = Struct_2(global3.a, vec3<bool>(global2.a, any(vec4<bool>(true, func_2(vec3<f32>(-359f, 960f, 197f)), any(global3.b), func_2(vec3<f32>(-215f, 2092f, -439f)))), global3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, _wgslsmith_add_u32(0u, 111088u), func_1(Struct_1(global3.b.x, u_input.d.x), vec4<f32>(671f, -1063f, 159f, 927f)).x, countOneBits(1u)))), ~(-(-2147483647i >> ((0u & var_3.x) % 32u))), 2147483647i, -7084i);
}

