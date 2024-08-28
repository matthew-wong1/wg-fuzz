struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1927f;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<i32>(-25195i, 9780i, 2147483647i), 2147483647i, 105133u), -1i, vec2<bool>(false, false), 297f);

var<private> global2: array<vec2<f32>, 12>;

var<private> global3: array<f32, 29>;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(!global1.c.x, true, global4.x, !(!all(select(global1.c, global1.c, global1.c))));
    let var_1 = ~(_wgslsmith_div_u32(max(_wgslsmith_add_u32(21993u, global1.a.c), global1.a.c), global1.a.c) << (4294967295u % 32u));
    global2 = array<vec2<f32>, 12>();
    global3 = array<f32, 29>();
    global0 = global3[_wgslsmith_index_u32(~1u, 29u)];
    return Struct_4(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-global1.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 3517i, global1.a.b, u_input.a.x), vec4<i32>(global1.a.b, global1.b, 6801i, u_input.a.x)), 2147483647i), vec3<i32>(u_input.a.x, global1.a.b, 45452i), reverseBits(vec3<i32>(2147483647i, global1.a.b, u_input.a.x) << (vec3<u32>(global1.a.c, 1u, var_1) % vec3<u32>(32u)))), _wgslsmith_mult_i32(2147483647i ^ u_input.a.x, firstTrailingBit(-19251i)), 12832u), 1i, global4.wy, -225f);
}

fn func_3() -> u32 {
    global0 = 1000f;
    var var_0 = vec3<i32>(u_input.a.x, ~1i, firstLeadingBit(_wgslsmith_sub_i32(i32(-1i) * -3218i, 1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1136f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(16776u, 29u)] + global3[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global1.a.c, 29u)], global1.d)), global1.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1339f, global3[_wgslsmith_index_u32(69332u, 29u)], -721f, 174f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, 786f, 1645f, -256f) - vec4<f32>(global3[_wgslsmith_index_u32(471u, 29u)], 210f, global1.d, global3[_wgslsmith_index_u32(22265u, 29u)])), select(vec4<bool>(true, true, global1.c.x, global1.c.x), vec4<bool>(true, global1.c.x, global4.x, global4.x), false))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1382f, global3[_wgslsmith_index_u32(41066u, 29u)], 826f, 270f))))), global1.a, countOneBits(-max(-2147483647i, u_input.a.x)), global1.c);
    global4 = vec4<bool>(all(select(vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x), !vec4<bool>(global4.x, true, var_1.d.x, true), global1.c.x)) && any(select(!global1.c, select(vec2<bool>(true, global1.c.x), vec2<bool>(var_1.d.x, false), true), func_2().c.x)), false, all(!vec4<bool>(false, global4.x, true, var_1.d.x & true)), true);
    let var_2 = global4.x;
    return _wgslsmith_div_u32(global1.a.c | ~(~global1.a.c), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.b.c, var_1.b.c, 6838u), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.c, 13472u, 0u), vec3<u32>(var_1.b.c, 66682u, 4294967295u))), vec3<u32>(46291u, max(reverseBits(1u), var_1.b.c | global1.a.c), var_1.b.c)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = global1.a.a;
    let var_1 = min(-global1.a.a, ~(vec3<i32>(-1i) * -vec3<i32>(-53919i, var_0.x, 1i))) | _wgslsmith_clamp_vec3_i32(global1.a.a, _wgslsmith_mod_vec3_i32(global1.a.a, -(vec3<i32>(-11037i, global1.b, 0i) << (vec3<u32>(31239u, global1.a.c, global1.a.c) % vec3<u32>(32u)))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, global1.b)), global1.a.a ^ global1.a.a));
    var var_2 = 0i << (global1.a.c % 32u);
    global1 = func_2();
    var_0 = ~vec3<i32>(1i, _wgslsmith_mod_i32(min(-1150i, global1.b), reverseBits(-2147483647i)) >> (_wgslsmith_mod_u32(~global1.a.c, _wgslsmith_mod_u32(1u, 42402u)) % 32u), ~1i);
    return vec4<u32>(~1u, abs(abs(1u)), _wgslsmith_clamp_u32(0u, 4294967295u, ~(0u & global1.a.c)), _wgslsmith_clamp_u32(~(global1.a.c | 4294967295u), reverseBits(countOneBits(global1.a.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(33594u, global1.a.c, 1u), vec3<u32>(15898u, 4294967295u, 1u)) | func_3())) | _wgslsmith_clamp_vec4_u32(countOneBits(~max(vec4<u32>(global1.a.c, global1.a.c, global1.a.c, 4294967295u), vec4<u32>(global1.a.c, 54095u, 84655u, global1.a.c))), firstLeadingBit(vec4<u32>(23701u, global1.a.c, global1.a.c, 4294967295u) | vec4<u32>(global1.a.c, 1u, 24384u, global1.a.c)) ^ vec4<u32>(global1.a.c, 11869u ^ global1.a.c, ~38838u, _wgslsmith_mod_u32(global1.a.c, 4294967295u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.c, global1.a.c, 67017u, global1.a.c), vec4<u32>(global1.a.c, global1.a.c, 5383u, global1.a.c)), vec4<u32>(global1.a.c, 0u, 1u, global1.a.c)), ~vec4<u32>(55609u, 4294967295u, global1.a.c, 14930u) | _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.c, global1.a.c, global1.a.c, 4955u), vec4<u32>(43293u, 4294967295u, 19352u, global1.a.c))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: f32) -> bool {
    let var_0 = 1u;
    global2 = array<vec2<f32>, 12>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(arg_2.x, 12u)])), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, global3[_wgslsmith_index_u32(arg_0, 29u)], 118f, arg_1) - vec4<f32>(arg_3, -407f, -1000f, arg_3)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 586f, -948f, global1.d))), global1.a, -1i, global1.c));
    return false;
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = arg_0;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1029f, global3[_wgslsmith_index_u32(arg_3, 29u)], 1000f, global3[_wgslsmith_index_u32(global1.a.c, 29u)]) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1406f, -104f, arg_0), vec4<f32>(478f, arg_0, 1382f, global3[_wgslsmith_index_u32(118740u, 29u)]), vec4<bool>(arg_1.x, arg_1.x, global4.x, false))))))), global1.a, -_wgslsmith_div_i32(-global1.b, 1i), arg_1.xz);
    var var_1 = Struct_2(var_0.a, Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-65354i, 1i), var_0.c), _wgslsmith_add_i32(global1.b, u_input.a.x), 0i), var_0.b.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a.c, 52860u) << (vec3<u32>(var_0.b.c, 10343u, var_0.b.c) % vec3<u32>(32u)), ~vec3<u32>(global1.a.c, arg_3, global1.a.c))), -_wgslsmith_add_i32(var_0.b.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(46568i, u_input.a.x))) << (~(~var_0.b.c) % 32u), !select(arg_1.xy, !vec2<bool>(arg_1.x, true), select(vec2<bool>(true, arg_2), vec2<bool>(true, false), true)));
    let var_2 = ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(43043u, var_0.b.c, arg_3), vec3<u32>(var_1.b.c, 98043u, 23067u)) & (vec3<u32>(4294967295u, arg_3, 64434u) << (vec3<u32>(1u, var_1.b.c, 44101u) % vec3<u32>(32u))), ~min(vec3<u32>(4294967295u, 1u, arg_3), vec3<u32>(36211u, 1u, 4294967295u))) >> (max(7053u, _wgslsmith_div_u32(max(var_1.b.c, arg_3) ^ (var_0.b.c ^ var_0.b.c), 0u)) % 32u);
    let var_3 = ~28211u;
    return Struct_1(vec3<i32>(~(~(-21058i)), 16984i, 61936i), var_0.b.b, 1u ^ var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(global4.zyz, vec3<bool>(!global1.c.x, any(global4.zwz), any(vec3<bool>(true, global1.c.x, global1.c.x))), global4.yww));
    let var_1 = Struct_4(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global1.a.c, 29u)], 100f))), vec3<bool>(any(vec4<bool>(global1.c.x, global4.x, false, global4.x)), _wgslsmith_f_op_f32(global1.d * global3[_wgslsmith_index_u32(global1.a.c, 29u)]) != _wgslsmith_f_op_f32(-1651f - global3[_wgslsmith_index_u32(0u, 29u)]), global4.x), func_4(~1u, global1.d, vec4<u32>(global1.a.c, global1.a.c, 9543u, global1.a.c) & func_1(global3[_wgslsmith_index_u32(1u, 29u)], global4.ywy), func_2().d), global1.a.c | _wgslsmith_mod_u32(~1u, min(0u, global1.a.c))), -10608i, select(vec2<bool>(true, true), global4.zz, select(vec2<bool>(false, !global4.x), vec2<bool>(u_input.a.x == -2147483647i, global1.c.x), global4.zx)), 777f);
    global3 = array<f32, 29>();
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, var_1.d, var_1.d, 1440f) - vec4<f32>(921f, global1.d, 1000f, global3[_wgslsmith_index_u32(global1.a.c, 29u)])))))), global1.a, min(func_5(global1.d, vec3<bool>(true, true, global1.c.x), var_1.c.x, global1.a.c).b ^ global1.a.b, _wgslsmith_sub_i32(global1.a.a.x, i32(-1i) * -26440i)), vec2<bool>(!(var_1.c.x && false), var_1.b <= var_1.a.a.x)), -_wgslsmith_add_i32(min(0i, -20937i), global1.a.b & ~global1.a.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.c, var_1.a.c, 4294967295u) << (vec3<u32>(5641u, 22189u, var_1.a.c) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 61036u, 31228u))), vec3<u32>(func_3(), 83398u, var_1.a.c)), func_2(), var_1.d);
    var_0 = -(-1i >> (abs(var_2.c.x) % 32u)) == global1.b;
    let var_3 = var_2.a;
    var var_4 = ~vec3<u32>(18430u, _wgslsmith_mod_u32(var_1.a.c, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_3.b.c, var_3.b.c), var_1.a.c)), ~12474u);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(_wgslsmith_f_op_f32(993f - _wgslsmith_f_op_f32(var_1.d * 1000f)), vec3<bool>(true, var_1.c.x, select(true, global4.x, false))).x, var_2.c.x), 29u)], var_1.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d, global1.d, var_1.d))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d, var_3.a.x)) + _wgslsmith_div_f32(var_2.e, -450f))))));
}

