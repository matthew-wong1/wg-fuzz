struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1u, vec3<bool>(true, true, true), -917f), Struct_1(21577u, vec3<bool>(true, true, false), 761f), Struct_1(82586u, vec3<bool>(false, false, false), -479f), Struct_1(85458u, vec3<bool>(true, true, true), -700f), Struct_1(1u, vec3<bool>(true, false, false), 1051f), Struct_1(0u, vec3<bool>(false, false, true), -1519f), Struct_1(0u, vec3<bool>(true, true, true), -1000f), Struct_1(1u, vec3<bool>(false, false, true), 1446f), Struct_1(4294967295u, vec3<bool>(true, false, true), -820f), Struct_1(42711u, vec3<bool>(true, true, false), -452f), Struct_1(33473u, vec3<bool>(true, true, false), -210f), Struct_1(0u, vec3<bool>(false, true, true), -307f), Struct_1(1u, vec3<bool>(false, true, true), 1039f), Struct_1(9905u, vec3<bool>(true, false, true), 1341f), Struct_1(4294967295u, vec3<bool>(true, true, false), 707f), Struct_1(54082u, vec3<bool>(false, true, true), 1000f), Struct_1(12965u, vec3<bool>(true, false, false), 707f), Struct_1(2512u, vec3<bool>(true, false, false), 740f));

var<private> global1: u32;

var<private> global2: vec3<f32> = vec3<f32>(-265f, 1000f, 418f);

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = arg_0.x;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a | (_wgslsmith_dot_vec4_u32(max(firstLeadingBit(vec4<u32>(1u, u_input.a, 50547u, 55609u)), vec4<u32>(u_input.a, 84693u, u_input.a, 16988u)), _wgslsmith_mod_vec4_u32(vec4<u32>(15321u, 0u, u_input.a, u_input.a) | vec4<u32>(u_input.a, 112427u, u_input.a, u_input.a), reverseBits(vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u)))) << (9221u % 32u)), 18u)];
    var var_2 = Struct_1(reverseBits(_wgslsmith_mult_u32(firstTrailingBit(var_1.a) & min(u_input.a, var_1.a), ~u_input.a)), var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))))));
    var_2 = global0[_wgslsmith_index_u32(max(u_input.a, 37043u), 18u)];
    global3 = array<Struct_2, 10>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.c)), var_2.c)) * -523f), global2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2821f, -1353f, var_1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, global2.x, var_2.c) * vec3<f32>(var_2.c, var_1.c, var_2.c)))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, -533f, arg_1.c.c)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1037f, 671f, arg_1.b)))) * _wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(u_input.d)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1856f, -201f, arg_1.b) + _wgslsmith_div_vec3_f32(vec3<f32>(1231f, arg_1.c.c, global2.x), vec3<f32>(global2.x, arg_1.b, global2.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(201f, global2.x, arg_1.c.c))))))));
    global3 = array<Struct_2, 10>();
    var var_1 = arg_1.c;
    let var_2 = countOneBits(abs(-vec2<i32>(arg_0.x, max(60641i, u_input.e))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c.c)));
    return vec3<bool>(arg_1.c.b.x, true, !var_1.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = ~arg_0.a << (0u % 32u);
    var var_1 = global3[_wgslsmith_index_u32(u_input.a, 10u)];
    global1 = ~4294967295u;
    var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c))), arg_0);
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(20524i, -6578i), vec2<i32>(-1i, -62166i)))), 2147483647i), -20264i, 0i);
    return global3[_wgslsmith_index_u32(var_1.c.a ^ u_input.a, 10u)];
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global1 = 1u;
    var var_0 = global3[_wgslsmith_index_u32(~u_input.a, 10u)];
    let var_1 = func_4(Struct_1(~u_input.a, !select(arg_0.b, func_2(u_input.d.zxw, Struct_2(var_0.c.a, -1192f, var_0.c), 0u, vec3<i32>(u_input.d.x, -1i, u_input.c)), vec3<bool>(true, false, arg_0.b.x)), _wgslsmith_f_op_f32(-1505f * -380f)), 806f, select(func_2(vec3<i32>(u_input.d.x, -39657i, u_input.e), Struct_2(reverseBits(24707u), var_0.b, Struct_1(4294967295u, var_0.c.b, 1107f)), u_input.a, u_input.d.yxy).x, arg_1, true), _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(29630u, 11833u), vec2<u32>(arg_0.a, 1u))), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(arg_0.a, arg_0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0.a), vec2<u32>(arg_0.a, 0u) & vec2<u32>(arg_0.a, arg_0.a)), select(var_0.c.b.yz, select(arg_0.b.yx, var_0.c.b.yz, var_0.c.b.xy), var_0.c.b.yx))));
    var var_2 = 73680i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(893f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(838f))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.c, u_input.d.x, 1i, u_input.c)))).x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-982f * global2.x)))) - _wgslsmith_f_op_f32(-var_0.c.c)));
    return !(!select(!vec4<bool>(false, var_1.c.b.x, arg_0.b.x, var_0.c.b.x), select(select(vec4<bool>(false, var_1.c.b.x, var_0.c.b.x, true), vec4<bool>(var_1.c.b.x, arg_1, var_0.c.b.x, arg_1), true), !vec4<bool>(arg_0.b.x, false, var_1.c.b.x, false), 6584u < arg_0.a), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, !select(!(u_input.a >= 4294967295u), all(func_1(Struct_1(1u, vec3<bool>(true, true, false), 123f), false)), true), false, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, 1f, _wgslsmith_f_op_vec3_f32(func_3(~vec4<i32>(-30963i, u_input.d.x, u_input.b.x, 23844i))).x, global2.x)) + vec4<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(235f, -539f))))), -837f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-785f)) + 1000f)));
    let var_2 = ~vec2<u32>(1u, ~abs(1u));
    let var_3 = min(~reverseBits(reverseBits(-vec3<i32>(-43113i, u_input.b.x, u_input.d.x))), -firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.yzx, u_input.d.zxw), select(u_input.d.zzz, u_input.d.xwx, var_0.x))));
    var var_4 = global0[_wgslsmith_index_u32(var_2.x, 18u)];
    var var_5 = func_4(global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.x, var_4.a), ~1u) ^ ~(~u_input.a)), 18u)], _wgslsmith_f_op_f32(trunc(-128f)), false, ~vec2<u32>(u_input.a, var_4.a)).c;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.zww)) * vec3<f32>(338f, -429f, var_4.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.zwx - vec3<f32>(var_5.c, global2.x, var_4.c)) * vec3<f32>(460f, var_4.c, -391f)))), _wgslsmith_f_op_vec3_f32(-var_1.zzw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c, -256f, -646f) - vec3<f32>(var_5.c, global2.x, var_4.c)) + _wgslsmith_f_op_vec3_f32(sign(var_1.zxw))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1673f), -222f, -415f))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

