struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, false, true, true, false, false, false, false, false, true, true, true, false, false, false, false, true, false, true, false, true, true, false);

var<private> global1: Struct_5 = Struct_5(vec4<i32>(-7718i, -20794i, 0i, -26848i), 0u, Struct_4(false, vec2<i32>(2147483647i, -1i), Struct_1(vec3<f32>(624f, -594f, -1748f)), vec4<i32>(63190i, -70474i, i32(-2147483648), 0i), vec2<i32>(2147483647i, -62641i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    global1 = Struct_5((vec4<i32>(-1i) * -vec4<i32>(-25727i, global1.a.x, arg_0.x, -24014i)) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b, 21603u, global1.b, 3528u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.b, global1.b, global1.b), vec4<u32>(u_input.c.x, global1.b, global1.b, 15334u)))) % vec4<u32>(32u)), ~global1.b, Struct_4(!(-565f >= _wgslsmith_f_op_f32(global1.c.c.a.x + 436f)), vec2<i32>(69555i, arg_0.x), global1.c.c, vec4<i32>(u_input.b, 51303i, -9713i, ~_wgslsmith_mod_i32(0i, u_input.b)), max(-reverseBits(vec2<i32>(u_input.b, -17024i)), firstTrailingBit(~vec2<i32>(global1.a.x, arg_0.x)))));
    let var_0 = arg_0;
    let var_1 = Struct_5(_wgslsmith_div_vec4_i32(~global1.a | -global1.a, ~(-global1.c.d)), ~4294967295u, global1.c);
    var var_2 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.a, global0[_wgslsmith_index_u32(global1.b, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), !var_1.c.a), vec3<bool>(var_1.c.a & global0[_wgslsmith_index_u32(var_1.b, 24u)], !global0[_wgslsmith_index_u32(var_1.b, 24u)] || false, false), select(vec3<bool>(!global0[_wgslsmith_index_u32(49268u, 24u)], global0[_wgslsmith_index_u32(33206u, 24u)] == false, var_1.c.c.a.x == arg_1), vec3<bool>(false, !global0[_wgslsmith_index_u32(var_1.b, 24u)], all(vec4<bool>(false, false, global1.c.a, false))), all(select(vec2<bool>(global1.c.a, global0[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(var_1.c.a, true), vec2<bool>(var_1.c.a, true)))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1014f + _wgslsmith_f_op_f32(-var_1.c.c.a.x)), _wgslsmith_f_op_f32(-var_1.c.c.a.x)))));
    return 31184u;
}

fn func_1() -> Struct_1 {
    var var_0 = -min(select(_wgslsmith_mod_vec2_i32(global1.c.d.xz, global1.a.zw), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global1.a.x), ~vec2<i32>(u_input.b, u_input.b)), !global0[_wgslsmith_index_u32(32890u, 24u)]), ~vec2<i32>(firstTrailingBit(-9447i), u_input.b));
    global0 = array<bool, 24>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.a.x))) + 836f);
    var var_2 = countOneBits(u_input.a);
    var var_3 = vec4<bool>(false, !any(!select(vec4<bool>(true, global1.c.a, global1.c.a, false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(79803u, 24u)]))), !global0[_wgslsmith_index_u32(func_2(global1.c.d.wzw, global1.c.c.a.x), 24u)], true);
    return global1.c.c;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    global1 = Struct_5(arg_2.d >> (~reverseBits(firstLeadingBit(vec4<u32>(global1.b, u_input.a, u_input.c.x, u_input.a))) % vec4<u32>(32u)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u) >> (_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(26896u, global1.b)) % 32u), u_input.a), arg_2);
    var_0 = Struct_4(true, _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, global1.c.e.x), global1.a.yw), func_1(), min(-vec4<i32>(~12371i, -var_0.b.x, _wgslsmith_dot_vec3_i32(global1.a.xyz, vec3<i32>(1i, u_input.b, 23715i)), var_0.e.x << (4294967295u % 32u)), ~vec4<i32>(-8965i, var_0.d.x, 102032i, u_input.b) | ~vec4<i32>(0i, global1.c.e.x, global1.c.e.x, var_0.b.x)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.e, ~vec2<i32>(var_0.d.x, -2147483647i), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(global1.a.wx, arg_2.b))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, arg_2.d.x) | max(vec2<i32>(global1.c.b.x, 2147483647i), var_0.b), ~(~vec2<i32>(global1.a.x, var_0.e.x)), abs(-var_0.d.xw))));
    global0 = array<bool, 24>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.c.c.a), vec3<f32>(298f, -1006f, global1.c.c.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(751f, -580f, 792f))))), global1.c, func_1()));
    var var_1 = vec3<bool>(all(!select(vec4<bool>(false, true, true, global1.c.a), vec4<bool>(false, global1.c.a, true, false), any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global1.c.a)))), false, false);
    let var_2 = func_1();
    let var_3 = 0u;
    var_0 = var_2.a.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.c.a.x))), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x - global1.c.c.a.x), -1000f)))));
    let var_4 = vec2<bool>(true, true);
    var var_5 = countOneBits(firstTrailingBit(select(global1.a.www, -global1.a.zyy & ~vec3<i32>(global1.c.b.x, u_input.b, u_input.b), var_1.x)));
    global1 = Struct_5(~(~global1.a), ~(~(~4294967295u << (~4294967295u % 32u))), Struct_4(!all(vec2<bool>(global0[_wgslsmith_index_u32(global1.b, 24u)], false)), -var_5.xy, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.c.a - vec3<f32>(global1.c.c.a.x, global1.c.c.a.x, -752f)))), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-8109i, global1.c.d.x, 32373i, 10875i), vec4<i32>(var_5.x, var_5.x, 2752i, var_5.x)), -global1.c.d, -vec4<i32>(var_5.x, 11981i, global1.c.d.x, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(36299i, u_input.b, u_input.b, 2147483647i), firstTrailingBit(vec4<i32>(0i, 17803i, global1.a.x, global1.a.x)))), min(vec2<i32>(-1i, 2147483647i) ^ max(global1.c.e, vec2<i32>(global1.a.x, 0i)), ~_wgslsmith_mod_vec2_i32(var_5.zx, vec2<i32>(-2147483647i, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.c.a.x, global1.c.c.a.x, 138f, var_2.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c.c.a.x, -665f, 195f, 614f), vec4<f32>(global1.c.c.a.x, 1272f, 546f, 880f)))))));
}

