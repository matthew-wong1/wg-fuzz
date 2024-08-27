struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(69322u, 51281u);

var<private> global1: array<Struct_1, 32>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 6785i, -1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = arg_0;
    var var_1 = arg_1.d;
    var var_2 = reverseBits(-(~(arg_1.c.b.x | _wgslsmith_mod_i32(arg_2.a.d.b.x, arg_0.a.d.b.x))));
    global1 = array<Struct_1, 32>();
    var var_3 = ~vec4<u32>(15038u, ~0u, 1u, countOneBits(min(~36429u, u_input.d >> (global0.x % 32u))));
    return vec3<i32>(arg_2.a.d.c, reverseBits(~(-(0i & arg_1.c.c))), min(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(var_1.b.yx), abs(var_1.b.xx)), var_0.a.b.yz), 12334i));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -683f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1038f, _wgslsmith_f_op_f32(453f * -2007f), any(vec4<bool>(true, false, true, true)))), -2272f, !all(vec3<bool>(false, false, false)))))));
    global2 = vec4<i32>(reverseBits(-42851i), 55688i, select(890i, -global2.x, any(vec2<bool>(true, true))) << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, 5314u), u_input.c), u_input.d, false) % 32u), -1354i);
    var var_1 = global2.zzz;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-global2.ww, ~global2.xy), abs(-u_input.a)), select(vec3<i32>(i32(-1i) * -10246i, 1i, ~u_input.b), ~func_3(Struct_4(Struct_2(Struct_1(644i, vec3<i32>(-1i, global2.x, 10824i), -10980i), global2.wzw, global1[_wgslsmith_index_u32(global0.x, 32u)], global1[_wgslsmith_index_u32(global0.x, 32u)])), Struct_2(global1[_wgslsmith_index_u32(global0.x, 32u)], vec3<i32>(15494i, 2147483647i, u_input.a), global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), Struct_3(Struct_2(Struct_1(-60862i, vec3<i32>(global2.x, -92i, -20030i), -2147483647i), vec3<i32>(2147483647i, 0i, 1i), global1[_wgslsmith_index_u32(u_input.c.x, 32u)], Struct_1(var_1.x, vec3<i32>(-2147483647i, var_1.x, 36596i), u_input.a)), global1[_wgslsmith_index_u32(4294967295u, 32u)])), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), max(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(19829i, global2.x, -2147483647i, global2.x), vec4<i32>(-1i, 35152i, -21741i, var_1.x)), vec4<i32>(var_1.x, 1i, 0i, 1i)), 1i)), global2.wxx, Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 0i, 0i, u_input.b), vec4<i32>(u_input.a, 2147483647i, -1i, global2.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global2.x, global2.x, u_input.b), vec4<i32>(0i, global2.x, var_1.x, var_1.x), vec4<i32>(-1i, -447i, 1i, global2.x)) | min(vec4<i32>(-15067i, u_input.b, global2.x, var_1.x), vec4<i32>(1i, global2.x, -41044i, 54786i))), ~global2.wwz, -1i), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 1i, u_input.a) << (~u_input.c % vec3<u32>(32u)), global2.yyy), countOneBits(~vec3<i32>(var_1.x, u_input.b, 1i)), global2.x));
    return Struct_2(Struct_1(1i, reverseBits(abs(vec3<i32>(3624i, -1i, var_1.x))) & select(global2.zxw, ~vec3<i32>(var_1.x, var_2.b.x, -2147483647i), false), 2147483647i), max(-(_wgslsmith_add_vec3_i32(var_2.c.b, vec3<i32>(global2.x, global2.x, u_input.a)) << (~vec3<u32>(11723u, u_input.c.x, global0.x) % vec3<u32>(32u))), vec3<i32>(-2147483647i, -1i, firstLeadingBit(1i)) << (vec3<u32>(abs(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, global0.x, global0.x), vec4<u32>(global0.x, 0u, global0.x, 4294967295u)), global0.x & u_input.d) % vec3<u32>(32u))), var_2.d, var_2.a);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f + 1406f));
    var var_1 = func_2();
    var var_2 = Struct_1(func_2().c.c, var_1.c.b, global2.x);
    var_2 = global1[_wgslsmith_index_u32(1u, 32u)];
    var_2 = Struct_1(var_1.d.a, vec3<i32>(func_3(Struct_4(func_2()), func_2(), Struct_3(Struct_2(global1[_wgslsmith_index_u32(global0.x, 32u)], vec3<i32>(global2.x, 2147483647i, var_2.b.x), var_1.a, global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 5161u), 32u)])).x, abs(-26031i), -1i), _wgslsmith_add_i32(abs(u_input.a), ~global2.x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -vec4<i32>(~_wgslsmith_mult_i32(func_1(), 1i), ~35269i, -_wgslsmith_div_i32(-31138i, 0i | global2.x), select(_wgslsmith_dot_vec2_i32(~vec2<i32>(global2.x, u_input.a), firstLeadingBit(vec2<i32>(-8271i, u_input.a))), u_input.b, true && select(true, false, true)));
    var var_0 = Struct_4(func_2());
    global2 = (-(~vec4<i32>(-469i, -54481i, 0i, 582i)) & firstLeadingBit(firstTrailingBit(-vec4<i32>(u_input.b, -32452i, -2147483647i, u_input.b)))) | (vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_0.a.a.b.yz, vec2<i32>(1i, 10167i)), -40466i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(6855i, -177i), -vec2<i32>(global2.x, u_input.b)), abs(_wgslsmith_add_i32(2147483647i, var_0.a.b.x))) & _wgslsmith_add_vec4_i32(min(vec4<i32>(2147483647i, global2.x, u_input.b, u_input.b), vec4<i32>(u_input.a, global2.x, u_input.b, var_0.a.d.b.x)), (vec4<i32>(var_0.a.a.b.x, 2147483647i, global2.x, var_0.a.b.x) ^ vec4<i32>(27612i, u_input.a, u_input.a, var_0.a.b.x)) >> (~vec4<u32>(global0.x, 35359u, u_input.d, 0u) % vec4<u32>(32u))));
    var_0 = Struct_4(Struct_2(var_0.a.a, vec3<i32>(~(~u_input.a), firstTrailingBit(func_1()), 1i), Struct_1(51835i >> (reverseBits(u_input.d) % 32u), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.c.a, -7083i, u_input.b) ^ global2.wxz, vec3<i32>(global2.x, -1i, var_0.a.a.b.x) >> (u_input.c % vec3<u32>(32u))), 2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16912u, ~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 0u, global0.x), vec4<u32>(global0.x, 1503u, 1u, global0.x))), select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 22671u), vec3<u32>(global0.x, u_input.c.x, global0.x)), ~vec3<u32>(24838u, u_input.c.x, 92451u), vec3<bool>(true, false, true))), 32u)]));
    let var_1 = countOneBits(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global2.x, -34103i, 10403i), vec4<i32>(var_0.a.a.a, 23605i, var_0.a.d.a, -1i) ^ vec4<i32>(5450i, var_0.a.b.x, -2147483647i, var_0.a.d.c)), vec4<i32>(0i, _wgslsmith_mod_i32(-1397i, global2.x), 1i, u_input.a))));
    let var_2 = ~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_mult_i32(-14453i, var_1.x), ~(-1i), -2147483647i << (u_input.d % 32u), var_1.x)), var_1);
    global1 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(global0.x & 74302u, 72768u & u_input.c.x, 0u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(-341f)), _wgslsmith_f_op_f32(-595f - 651f)))))));
}

