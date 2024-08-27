struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(282f, -737f, -243f, 370f, 140f, -928f, -173f, -1077f, 1000f, -1577f, 416f, 247f, -1125f, 784f, 1636f, 246f, -165f);

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<u32>(0u, 28065u, 67661u), vec3<f32>(-1138f, 632f, -703f), false), Struct_2(vec3<u32>(25225u, 5060u, 4294967295u), vec3<f32>(-679f, -800f, -1062f), false), Struct_2(vec3<u32>(10759u, 4294967295u, 53466u), vec3<f32>(1757f, 880f, 1000f), true), Struct_2(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(-477f, -564f, 1598f), false), Struct_2(vec3<u32>(37106u, 4294967295u, 4294967295u), vec3<f32>(-784f, -1101f, 152f), true), Struct_2(vec3<u32>(1u, 0u, 0u), vec3<f32>(346f, -588f, -371f), false), Struct_2(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(1000f, -2403f, 878f), true), Struct_2(vec3<u32>(19811u, 67972u, 1u), vec3<f32>(-1131f, -742f, 1638f), true), Struct_2(vec3<u32>(38217u, 8731u, 49676u), vec3<f32>(-1000f, 825f, 337f), true), Struct_2(vec3<u32>(4294967295u, 22586u, 4294967295u), vec3<f32>(653f, 986f, -2036f), false), Struct_2(vec3<u32>(0u, 1u, 40089u), vec3<f32>(-1000f, -1985f, 844f), true), Struct_2(vec3<u32>(1u, 30537u, 4294967295u), vec3<f32>(-1464f, 671f, -2130f), true), Struct_2(vec3<u32>(23226u, 36069u, 49483u), vec3<f32>(-1000f, -1270f, -784f), true), Struct_2(vec3<u32>(20270u, 10060u, 4294967295u), vec3<f32>(-1000f, 539f, -1000f), false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = abs(-(((vec4<i32>(arg_3.x, -42681i, -2147483647i, 2147483647i) ^ vec4<i32>(-22241i, 36706i, 0i, 26865i)) >> (~vec4<u32>(arg_2.a.x, 83646u, arg_2.a.x, 0u) % vec4<u32>(32u))) ^ reverseBits(-vec4<i32>(34111i, u_input.c, u_input.b, u_input.c))));
    var var_1 = 29690u;
    var var_2 = Struct_2(abs(vec3<u32>(0u, ~arg_2.a.x, ~_wgslsmith_div_u32(7126u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, global0[_wgslsmith_index_u32(arg_2.a.x, 17u)], -1796f)) - vec3<f32>(-372f, -173f, -1453f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(571f, 1081f, arg_0.a), vec3<f32>(-206f, 522f, -189f)))), !arg_1.x))), global0[_wgslsmith_index_u32(select(~arg_2.a.x, ~min(47144u, 101738u), arg_1.x), 17u)] >= _wgslsmith_f_op_f32(-565f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 17u)], -643f)))));
    let var_3 = -min(firstTrailingBit(vec4<i32>(2147483647i, 22855i, var_0.x, var_0.x)), firstLeadingBit(var_0) & (var_0 << (vec4<u32>(21152u, 1u, arg_2.a.x, arg_2.a.x) % vec4<u32>(32u)))) & select(~(-var_0), var_0, false);
    let var_4 = arg_3.x;
    return countOneBits(~vec2<u32>(_wgslsmith_div_u32(arg_2.a.x, 14363u), 1u >> (var_2.a.x % 32u)) >> (~countOneBits(min(var_2.a.xx, var_2.a.yz)) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(max(vec2<u32>(_wgslsmith_mod_u32(u_input.a, firstTrailingBit(30540u)), _wgslsmith_sub_u32(u_input.a, u_input.a)), func_3(arg_0, !arg_2.wz, Struct_1(vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_i32(arg_1.yy, vec2<i32>(arg_1.x, -9001i)))));
    let var_1 = abs(_wgslsmith_dot_vec3_i32(min(min(vec3<i32>(-1i, u_input.b, -55194i), vec3<i32>(0i, u_input.c, 6827i)), arg_1), vec3<i32>(_wgslsmith_sub_i32(14050i, u_input.c), u_input.b, _wgslsmith_dot_vec3_i32(arg_1, arg_1))) ^ u_input.c);
    var var_2 = abs(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 14592u), var_0.a) >> (~4294967295u % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, u_input.a) | var_0.a, ~vec2<u32>(10465u, 1u)), 4294967295u));
    global0 = array<f32, 17>();
    var var_3 = -653f;
    return Struct_2(var_2.zyw, vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.x, var_2.x), 17u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a + 1005f), arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(sign(-651f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(138f - arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))))), false);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = Struct_1(~(~arg_0.a.yy));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -859f), var_0.x));
}

fn func_5(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -155f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_2(vec3<u32>(u_input.a, 14549u, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], arg_0, 616f), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -249f), func_2(Struct_3(global0[_wgslsmith_index_u32(12669u, 17u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(-24497i, u_input.b, 2147483647i), vec3<i32>(13455i, 1i, u_input.c)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), true).b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(974f, 788f, -660f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, 103f))))));
    let var_1 = (true || all(vec3<bool>(u_input.a > 18850u, any(vec3<bool>(true, true, true)), true))) && (any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))) || (true | any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))));
    global1 = array<Struct_2, 14>();
    global0 = array<f32, 17>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -363f);
    return Struct_3(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(func_2(Struct_3(var_0.x), vec3<i32>(u_input.b, -37216i, u_input.b), vec4<bool>(var_1, true, var_1, var_1), var_1).b.x), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1945i, u_input.b, u_input.c), vec3<i32>(-1i, u_input.c, -2147483647i)), select(vec3<i32>(-1i, u_input.b, -56734i), vec3<i32>(u_input.b, -1i, u_input.c), var_1), true), !(!vec4<bool>(var_1, var_1, true, false)), -2147483647i >= _wgslsmith_add_i32(u_input.c, 30866i)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = 4379u;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, ~79920u), 14u)];
    var var_2 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2157f, _wgslsmith_f_op_f32(func_4(func_2(Struct_3(-1022f), vec3<i32>(1i, 1i, u_input.c), vec4<bool>(false, var_1.c, false, false), true))))), 191f)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-1099f + -713f));
    let var_4 = select(~abs(min(var_1.a.x, _wgslsmith_mult_u32(0u, var_1.a.x))), 1u, var_1.c);
    return StorageBuffer(50305u, (_wgslsmith_mod_vec3_i32(abs(vec3<i32>(93396i, u_input.c, 2147483647i)), vec3<i32>(-2445i, -2147483647i, -44690i)) & ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 4759i, -6220i), vec3<i32>(u_input.c, 29567i, u_input.b))) ^ vec3<i32>(u_input.b & -1i, countOneBits(u_input.c), abs(-30387i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = func_1();
}

