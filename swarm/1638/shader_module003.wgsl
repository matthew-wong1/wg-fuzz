struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

var<private> global2: array<bool, 27> = array<bool, 27>(true, false, true, false, true, false, false, true, true, false, false, false, true, true, false, true, true, false, true, true, true, true, false, false, true, false, true);

var<private> global3: Struct_4 = Struct_4(Struct_3(vec3<f32>(369f, -275f, 143f), vec4<bool>(false, true, false, true), 29815i, vec2<u32>(8120u, 1u), Struct_1(-1i)), Struct_2(2390f, Struct_1(2147483647i), Struct_1(1i)), vec2<bool>(false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    global1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1.a)))), -156f), global1.b, 2147483647i);
    global2 = array<bool, 27>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-891f - arg_1.a), _wgslsmith_f_op_f32(abs(-244f))), _wgslsmith_f_op_f32(-global1.a.x), !any(vec4<bool>(global3.a.b.x, global3.c.x, global3.a.b.x, global3.a.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * var_0)))) + _wgslsmith_div_f32(-1144f, _wgslsmith_f_op_f32(-1396f - var_0)));
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.b, global1.c, 1i)), firstLeadingBit(vec4<i32>(-27102i, global3.a.c, 1i, -61110i))), reverseBits(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-40311i, -6576i), vec2<i32>(global3.b.c.a, 22573i)), 1007i, global1.c, -17033i))), ~vec4<i32>(_wgslsmith_sub_i32(global1.c, i32(-1i) * -52683i), i32(-1i) * -32961i, 2147483647i, 0i));
    return _wgslsmith_f_op_f32(min(var_1, global3.a.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = global3.a.e;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(~vec2<u32>(u_input.c, u_input.c)), global3.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global3.b.a)));
    let var_2 = ~(~(~(~select(vec4<u32>(59437u, 4294967295u, global3.a.d.x, 0u), vec4<u32>(45098u, 1u, 1u, 34643u), true))));
    var var_3 = true;
    let var_4 = 1639f;
    return Struct_2(-638f, Struct_1(2147483647i), global3.a.e);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2143f, 956f)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(44614u, 1u, min(arg_1, 3004u), _wgslsmith_dot_vec2_u32(vec2<u32>(63097u, 0u), global3.a.d)), ~vec4<u32>(4294967295u, 1u, arg_1, 12005u))), u_input.b | _wgslsmith_add_i32(-u_input.b, 0i));
    let var_1 = Struct_4(Struct_3(global3.a.a, select(global3.a.b, select(!global3.a.b, !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(81673u, 27u)], global2[_wgslsmith_index_u32(global1.b.x, 27u)], false), true), vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], false, global3.a.b.x)), !global2[_wgslsmith_index_u32(u_input.a, 27u)], global3.a.b.x, global3.c.x)), -55266i, ~global3.a.d, global3.b.b), arg_0, vec2<bool>(!(!(!global3.a.b.x)), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.b.x, 4739u), 27u)]));
    global3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.a, -758f, var_1.b.a))) + vec3<f32>(1497f, var_0.a.x, -681f))), var_1.a.b, arg_0.b.a, var_1.a.d, Struct_1(i32(-1i) * -1i)), func_2(), global3.a.b.wx);
    var var_2 = global1.b.x != ~(~arg_1);
    var var_3 = var_1;
    return var_3.a.e;
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = func_4(func_2(), u_input.a);
    var_0 = Struct_1(0i);
    var var_1 = Struct_4(global3.a, global3.b, global3.c);
    let var_2 = ~vec2<u32>(~(~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, global1.b.x), ~var_1.a.d.x), ~(~33722u), 63704u));
    var var_3 = 1000f;
    return Struct_4(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, global1.a.x, -629f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2037f, global1.a.x, global3.b.a))))), global3.a.b, ~_wgslsmith_add_i32(var_1.b.b.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, -2147483647i, -2147483647i), vec3<i32>(-20652i, -14903i, global3.b.c.a))), _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 35343u), var_2), var_1.a.d), var_1.b.c), global3.b, var_1.a.b.xz);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> vec4<i32> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.a.a.yz + global3.a.a.zy))), func_1(-vec2<i32>(arg_0.a.e.a, u_input.b)).a.a.yz)) + vec2<f32>(452f, 1000f)), vec4<u32>(global3.a.d.x, 0u, ~47168u, 11491u), -_wgslsmith_sub_i32(-global3.a.e.a, 2147483647i));
    var var_1 = Struct_4(arg_0.a, func_2(), !global3.a.b.yy);
    var var_2 = 923f;
    let var_3 = func_1(countOneBits(~vec2<i32>(-2147483647i, ~var_0.c))).b;
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 1372f, var_0.a.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1303f, 1594f, global3.b.a), var_1.a.a, arg_0.a.b.yyw)))), vec3<f32>(global1.a.x, 1000f, 2494f))), vec4<bool>(var_1.a.b.x, (global1.a.x > 703f) & true, true, false), -global1.c, global3.a.d, Struct_1(i32(-1i) * -var_3.b.a));
    return -(~abs(~vec4<i32>(var_4.e.a, -33350i, -5401i, var_3.b.a)) | (max(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.c, -1119i, global1.c, arg_0.a.c), vec4<i32>(u_input.b, global1.c, -7241i, var_3.b.a)), vec4<i32>(var_1.b.b.a, var_3.b.a, global3.b.c.a, var_0.c) | vec4<i32>(2147483647i, u_input.b, -31215i, -2147483647i)) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, var_1.a.c, 1i, -2147483647i), vec4<i32>(var_0.c, 2147483647i, 6771i, 65672i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(func_5(func_1(vec2<i32>(global3.a.e.a, -36474i)), 1u, 1f), abs(vec4<i32>(u_input.b, -23759i, -2147483647i, global1.c)), -(vec4<i32>(global3.b.c.a, u_input.b, u_input.b, global1.c) >> (vec4<u32>(u_input.c, 4294967295u, u_input.a, 55691u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, -52634i, global1.c, global3.a.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, global1.c, -39329i), abs(vec4<i32>(global1.c, global1.c, -4255i, -36522i))))), i32(-1i) * -1i, (-13887i << (~(~u_input.a) % 32u)) >> (_wgslsmith_mod_u32(17626u, 38834u) % 32u));
    let var_1 = global3.b;
    global3 = Struct_4(Struct_3(global3.a.a, vec4<bool>(true, true || any(global3.a.b.yxz), all(global3.a.b), any(global3.c)), 2147483647i, global1.b.xx, Struct_1(reverseBits(global1.c))), func_2(), vec2<bool>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-28834i, -30745i, 30024i, u_input.b), vec4<i32>(var_0.x, 15630i, -6475i, u_input.b)), 11900i) < abs(_wgslsmith_mult_i32(u_input.b, var_1.b.a)), global2[_wgslsmith_index_u32(~u_input.c, 27u)]));
    global1 = Struct_5(global3.a.a.zz, select(countOneBits(min(vec4<u32>(38574u, 38300u, 1u, u_input.c), ~global1.b)), vec4<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(global1.b.wzy, vec3<u32>(global3.a.d.x, global3.a.d.x, 4294967295u)), global3.a.d.x, 4294967295u), select(func_1(_wgslsmith_mod_vec2_i32(var_0.yz, var_0.zx)).a.b, vec4<bool>(global3.c.x, global3.c.x, all(global3.a.b.ww), all(global3.c)), global2[_wgslsmith_index_u32(~98895u, 27u)])), ~var_0.x);
    global0 = func_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.yz, func_5(Struct_4(Struct_3(global3.a.a, global3.a.b, -9862i, global1.b.zz, var_1.b), global3.b, global3.a.b.zz), 0u, var_1.a).xx) ^ vec2<i32>(-1i, i32(-1i) * -260i), vec2<i32>(-_wgslsmith_mod_i32(var_0.x, 18736i), 1i))).b.c.a;
    var var_2 = !vec2<bool>(global2[_wgslsmith_index_u32((~u_input.c >> (~global1.b.x % 32u)) & u_input.c, 27u)], all(global3.a.b.yz));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.a, ~(~global3.a.d.x)), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(9098i, var_0.x, -1i, global1.c) & vec4<i32>(global3.b.c.a, global3.a.c, 4582i, 88301i)), select(~vec4<i32>(0i, 0i, -1i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(global1.c, var_0.x, 2147483647i, global3.a.e.a) << (vec4<u32>(42228u, 1u, u_input.a, 63495u) % vec4<u32>(32u)), -vec4<i32>(52930i, -52213i, -1i, 1i)), vec4<bool>(func_1(var_0.zz).a.b.x, false, true, var_2.x)), ~((vec4<i32>(global3.b.c.a, global3.b.c.a, 1i, global3.b.c.a) & vec4<i32>(-2147483647i, -34196i, 40027i, global3.b.b.a)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, -28300i, 21969i, var_0.x), vec4<i32>(u_input.b, -1i, u_input.b, 0i)))), global3.a.e.a & ~(-global3.b.c.a), _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(global3.a.d.x, 529u)), vec2<u32>(_wgslsmith_div_u32(~global3.a.d.x, countOneBits(0u)), firstLeadingBit(47510u))));
}

