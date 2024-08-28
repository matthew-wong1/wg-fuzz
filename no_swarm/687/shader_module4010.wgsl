struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(-1567f, Struct_1(vec3<i32>(3476i, 1i, 18570i), vec3<f32>(411f, 971f, 579f), vec2<i32>(i32(-2147483648), 24537i)), vec4<i32>(-56110i, 40057i, 13807i, 0i)));

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(39787u, 122u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(57869u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(38644u, 25412u), vec2<u32>(62761u, 24337u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(46073u, 4294967295u), vec2<u32>(4294967295u, 17250u), vec2<u32>(104498u, 4294967295u), vec2<u32>(14692u, 60271u), vec2<u32>(0u, 2895u), vec2<u32>(41685u, 0u), vec2<u32>(74664u, 4294967295u), vec2<u32>(0u, 41236u), vec2<u32>(0u, 0u), vec2<u32>(21943u, 0u), vec2<u32>(19239u, 21433u), vec2<u32>(0u, 44033u), vec2<u32>(51866u, 85300u), vec2<u32>(28729u, 6302u), vec2<u32>(0u, 45987u), vec2<u32>(3650u, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> Struct_3 {
    return Struct_3(global0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_2 {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1641f, arg_2, global0.a.b.b.x)), vec3<f32>(arg_2, arg_1.a.a, -1587f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - 477f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_0.b.x + 1205f))))), global1.c);
    var var_0 = global1.a;
    let var_1 = arg_1.a.b;
    var var_2 = Struct_3(global0.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-334f - arg_0.b.x)))), _wgslsmith_f_op_f32(global1.b.x - arg_2), arg_2, var_2.a.b.b.x)));
    return func_2(_wgslsmith_mod_i32(-18471i, _wgslsmith_add_i32(1i << ((u_input.b.x ^ 13499u) % 32u), -(~(-40567i)))), 0u, var_2.a.b.b).a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + global0.a.b.b.x), -352f)), -628f) + global0.a.b.b.xz);
    var var_1 = func_2(_wgslsmith_dot_vec2_i32(func_3(func_3(global0.a.b, func_2(-2147483647i, u_input.a.x, arg_0.b.b), -860f, arg_1).b, func_2(1i, 0u | u_input.b.x, global0.a.b.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1234f) + global1.b.x), arg_1).c.wz, vec2<i32>(-1i, -arg_0.c.x ^ (10416i >> (arg_3.x % 32u)))), min(~arg_3.x, 8159u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.a.b.b)), _wgslsmith_f_op_vec3_f32(global0.a.b.b * arg_0.b.b)) - _wgslsmith_f_op_vec3_f32(abs(global0.a.b.b))), global0.a.b.b));
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(4425i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.b.c.x, -27725i), vec2<i32>(-1i, 2147483647i)), var_1.a.c.x)), arg_0.b.a.xz << (u_input.a.xx % vec2<u32>(32u))));
    let var_3 = arg_0.c;
    var var_4 = func_3(Struct_1(vec3<i32>(44710i, ~global1.c.x, ~1i), arg_0.b.b, vec2<i32>(global1.a.x, reverseBits(countOneBits(-21276i)))), func_2(min(var_1.a.c.x & _wgslsmith_sub_i32(var_3.x, -2147483647i), -_wgslsmith_mult_i32(-17604i, var_1.a.c.x)), ~_wgslsmith_sub_u32(u_input.b.x, max(u_input.b.x, u_input.a.x)), global1.b), 500f, true);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = abs(~vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.a.x, u_input.b.x, 0u))), u_input.b.x, _wgslsmith_mod_u32(select(87347u, u_input.b.x, true), ~9721u)));
    var var_1 = global0.a.c.x;
    global0 = Struct_3(func_4(func_3(Struct_1(global0.a.b.a, global1.b, firstLeadingBit(vec2<i32>(global1.c.x, global0.a.c.x))), func_2(reverseBits(0i), 26851u, global1.b), global0.a.b.b.x, arg_0), false, var_0.x, ~(~u_input.a.wyy)));
    var var_2 = -((select(-1i, min(5487i, global0.a.b.c.x), any(vec2<bool>(true, arg_0))) >> (var_0.x % 32u)) << ((countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 36294u, 0u, 40419u), vec4<u32>(1u, 0u, u_input.a.x, 19021u))) >> (~var_0.x % 32u)) % 32u));
    let var_3 = vec4<f32>(203f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-931f - 591f))), global1.b.x, -1410f);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-197f, var_3.x, -1035f, 1000f))) * _wgslsmith_f_op_vec4_f32(step(var_3, vec4<f32>(2005f, -635f, global1.b.x, var_3.x)))) - _wgslsmith_f_op_vec4_f32(select(var_3, _wgslsmith_f_op_vec4_f32(abs(var_3)), arg_0)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, global1.b.x, global0.a.a, 581f) * _wgslsmith_f_op_vec4_f32(trunc(var_3)))), _wgslsmith_div_vec4_f32(var_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global1.b.x, global0.a.b.b.x, global0.a.b.b.x))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = -global1.a;
    var var_1 = select(_wgslsmith_div_vec2_i32(abs(_wgslsmith_add_vec2_i32(func_2(var_0.x, arg_3.x, vec3<f32>(407f, -1450f, arg_2.x)).a.c.yw, vec2<i32>(global0.a.c.x, arg_1.x))), max(reverseBits(_wgslsmith_sub_vec2_i32(arg_0, vec2<i32>(2147483647i, arg_1.x))), vec2<i32>(global0.a.b.a.x, global1.c.x))), firstLeadingBit(_wgslsmith_div_vec2_i32(var_0.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 20037i), var_0.yy, vec2<i32>(-29125i, -8656i)))) & (global1.c ^ _wgslsmith_mult_vec2_i32(global1.a.zy >> (vec2<u32>(u_input.a.x, arg_3.x) % vec2<u32>(32u)), func_4(global0.a, false, 12700u, arg_3).c.xy)), !vec2<bool>(func_2(global0.a.b.c.x, 1u, global0.a.b.b).a.b.c.x != -27037i, true & all(vec2<bool>(false, false))));
    let var_2 = true;
    let var_3 = global0.a.b.a;
    var_0 = global0.a.b.a;
    return StorageBuffer(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-987f + -2099f), _wgslsmith_f_op_f32(-1550f + 1811f))) + _wgslsmith_f_op_f32(global0.a.b.b.x * func_2(global0.a.c.x, u_input.b.x, vec3<f32>(global0.a.b.b.x, global0.a.b.b.x, 1000f)).a.b.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x)), global0.a.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-global0.a.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + -556f)))), -454f);
    let var_1 = global0.a.b;
    var var_2 = 44959u;
    global2 = array<vec2<u32>, 27>();
    var var_3 = firstTrailingBit(_wgslsmith_add_i32(-1i << ((~u_input.a.x ^ (u_input.a.x & 1u)) % 32u), _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_1.c.x, -1i, var_1.a.x, 38596i) | vec4<i32>(var_1.c.x, global1.c.x, 48026i, 0i)), global0.a.c)));
    var_2 = 0u << (0u % 32u);
    let x = u_input.a;
    s_output = func_5((~(vec2<i32>(global1.a.x, global0.a.b.c.x) & global1.c) << (u_input.b.xy % vec2<u32>(32u))) | var_1.c, _wgslsmith_add_vec2_i32(global1.a.zy, var_1.a.zy << (firstTrailingBit(u_input.a.yw << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1594f, global0.a.a, var_1.b.x, 692f) * vec4<f32>(865f, 732f, -291f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(func_1(true, vec3<i32>(1i, 1i, 0i)))), vec4<f32>(-728f, _wgslsmith_f_op_f32(-var_1.b.x), 556f, _wgslsmith_f_op_f32(round(-289f))), true)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.x))), global1.b.x, -1237f)), vec3<u32>(u_input.b.x, 1u, ~((u_input.a.x >> (u_input.b.x % 32u)) ^ firstLeadingBit(u_input.b.x))));
}

