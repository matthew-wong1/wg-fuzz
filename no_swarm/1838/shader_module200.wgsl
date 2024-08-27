struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-538f + 201f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, -675f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, 526f))))));
    return countOneBits(74586i);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec4<f32> {
    var var_0 = arg_0;
    var_0 = !(!(1009f > arg_1.x));
    let var_1 = select(!(!(!arg_0)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))) | (7857u <= min(16912u ^ global0[_wgslsmith_index_u32(15752u, 16u)], global0[_wgslsmith_index_u32(3098u, 16u)])), arg_0);
    var var_2 = arg_1.yz;
    var_2 = _wgslsmith_f_op_vec2_f32(step(arg_1.wz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx))));
    return _wgslsmith_f_op_vec4_f32(abs(arg_1));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -738f))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(-1000f))));
    let var_1 = vec3<bool>(true, false, ((~global0[_wgslsmith_index_u32(1u, 16u)] ^ arg_0.x) << (abs(4294967295u << (arg_0.x % 32u)) % 32u)) > ~4294967295u);
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, -603f, 1f), _wgslsmith_f_op_vec4_f32(func_3(any(vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 355f, var_0, 598f)))))), Struct_1(true, countOneBits(min(1i, 0i))), Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-158f, -762f, var_0))), Struct_1(true, firstLeadingBit(2147483647i))), 1187f, vec3<u32>(select(~global0[_wgslsmith_index_u32(31050u, 16u)], 38845u, !var_1.x), select(arg_0.x, countOneBits(1u), var_1.x), ~arg_0.x)), Struct_1(!all(var_1.zx) | !var_1.x, -2147483647i), ~1687u, true, ~firstTrailingBit(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 1u, global0[_wgslsmith_index_u32(33480u, 16u)]) | vec3<u32>(arg_0.x, 64814u, arg_0.x)));
    let var_3 = vec3<i32>(-(~(~(-31225i))), var_2.b.b & abs(-1i), -2906i);
    var var_4 = Struct_4(var_2.a, var_2.b, ~var_2.a.e.x & abs(~(26224u ^ var_2.a.e.x)), true, var_2.e);
    return Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.a.d, var_4.a.a.x))), var_0))), Struct_1(var_2.a.c.b.a, 0i));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = 0u;
    let var_1 = Struct_1(false, _wgslsmith_div_i32(arg_1.x, reverseBits(arg_1.x)));
    global0 = array<u32, 16>();
    var var_2 = vec2<bool>(select(true, ((true & var_1.a) == all(vec2<bool>(true, true))) && true, var_1.a), arg_2.c.b.a);
    var var_3 = u_input.a;
    return var_3.xz;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(~vec2<u32>(29996u, 3970u));
    global0 = array<u32, 16>();
    var var_1 = _wgslsmith_div_i32(max(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(36221i, u_input.a.x, arg_2.x, arg_2.x)), vec4<i32>(1i, -30045i, 0i, u_input.a.x)), ~arg_0), arg_2.x);
    let var_2 = vec4<bool>(false, false, any(!select(!arg_3, vec3<bool>(true, false, true), false)), true);
    let var_3 = var_0.b.a;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, -2147483647i);
    var var_1 = vec4<bool>(!(_wgslsmith_mod_i32(10134i, 2147483647i) <= reverseBits(u_input.a.x)) || true, true, true, !var_0.a);
    var_0 = func_5(func_1(), ~countOneBits(1u), ~func_4(vec3<f32>(242f, -1000f, 1f), countOneBits(vec2<i32>(1i, u_input.a.x) << (vec2<u32>(43262u, 5573u) % vec2<u32>(32u))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(619f, 1596f, 1102f, -893f) * vec4<f32>(1062f, 1000f, -625f, -220f)), Struct_1(false, var_0.b), func_2(vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 0u)), _wgslsmith_f_op_f32(abs(-432f)), vec3<u32>(4294967295u, 49741u, 4294967295u))), vec3<bool>(all(var_1.zz), -15360i < func_2(min(vec2<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 96933u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54133u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(50631u, 16u)]))).b.b, func_2(abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(34067u, 16u)])) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29855u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(6774u, 16u)], 53449u)) % vec2<u32>(32u))).b.a));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(global0[_wgslsmith_index_u32(24105u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], true), 63429u), 16u)], 18230u, countOneBits(abs(1u)), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7206u, 16u)], 16u)], 16u)])), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47074u, 16u)], 16u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 16u)], 16u)], abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)])), abs(1u))), select(max(abs(vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(8215u, 16u)], global0[_wgslsmith_index_u32(54301u, 16u)])) >> (~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 16u)], 61373u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)]) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13823u, 16u)], 16u)], 16u)], 16u)], 118045u, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 1u, 4294967295u, 52994u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35494u, 16u)], 16u)], 4294967295u, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(11113u, 16u)]))), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 3514u, 0u, 15914u))), !vec4<bool>(var_1.x || var_1.x, true, any(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16904u, 16u)], 16u)] != 35061u))), 16u)];
    var_0 = func_2(vec2<u32>(5762u, ~1u)).b;
    global0 = array<u32, 16>();
    var var_3 = firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(_wgslsmith_div_u32(19756u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31978u, 16u)], 16u)]) & ~0u), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(124027u, 16u)], 4294967295u), vec3<u32>(42221u, 25235u, 60969u)), 16u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52226u, 16u)], 16u)]), 16u)]), 16u)]);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(func_2(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37504u, 16u)], 16u)], 4294967295u)).a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1052f, 351f, 291f)))));
    var var_5 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(var_4.x - -1000f), var_4.x, _wgslsmith_f_op_f32(-var_4.x)), vec4<f32>(-1423f, _wgslsmith_f_op_f32(trunc(var_4.x)), _wgslsmith_f_op_f32(max(-663f, -130f)), _wgslsmith_f_op_f32(floor(670f))))), func_5(~(-2147483647i), abs(4294967295u), vec2<i32>(var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, var_0.b, var_0.b), vec4<i32>(16494i, u_input.a.x, var_0.b, var_0.b))), var_1.wwy), func_2(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46337u, 16u)], 16u)], 0u)), min(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16316u, 16u)], 16u)], 16u)], 16u)], 32081u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 23933u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-481f, var_4.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4.x, var_4.x))), any(select(vec3<bool>(false, var_0.a, true), var_1.xyw, vec3<bool>(var_1.x, var_0.a, false))))), countOneBits(select(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42751u, 16u)], 16u)], global0[_wgslsmith_index_u32(9027u, 16u)]), firstLeadingBit(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 16u)])), all(vec4<bool>(var_0.a, var_1.x, var_1.x, true))))), Struct_1(true, func_4(func_2(vec2<u32>(global0[_wgslsmith_index_u32(13481u, 16u)], 16648u)).a, -u_input.a.xx, Struct_3(vec4<f32>(var_4.x, 838f, 2598f, var_4.x), Struct_1(true, var_0.b), Struct_2(vec3<f32>(766f, -2047f, -107f), Struct_1(var_1.x, -31771i)), var_4.x, vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 24999u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)]))).x & func_2(vec2<u32>(32133u, 4294967295u) | vec2<u32>(global0[_wgslsmith_index_u32(24022u, 16u)], global0[_wgslsmith_index_u32(20734u, 16u)])).b.b), (~(~1u) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(25283u, 16u)], 0u, 11345u))) | abs(~0u), true, ~(~abs(vec3<u32>(global0[_wgslsmith_index_u32(13206u, 16u)], 4294967295u, 45948u)) ^ vec3<u32>(11158u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(~vec4<i32>(var_0.b, var_0.b, var_5.b.b, -18166i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_5.e.x, 16u)], 65014u, 42861u), vec4<u32>(619u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_5.e.x, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(78544u, 16u)], 54978u)) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a.x, var_5.a.c.b.b, var_5.b.b, 13637i))), -(firstLeadingBit(vec4<i32>(var_0.b, var_0.b, var_5.a.c.b.b, var_0.b)) << (~vec4<u32>(1u, var_5.c, 19349u, var_5.a.e.x) % vec4<u32>(32u))), vec4<bool>(true, true, func_2(~var_5.e.yx).b.a, all(var_1.yx))), var_4.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.zy)));
}

