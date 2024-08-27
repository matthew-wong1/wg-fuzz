struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec3<u32>(34944u, 4294967295u, 26865u), vec2<i32>(-64639i, -41971i), -1i), Struct_1(true, vec3<u32>(83102u, 1u, 2900u), vec2<i32>(-71199i, -5488i), 23373i), Struct_1(false, vec3<u32>(67847u, 5039u, 0u), vec2<i32>(1i, 2147483647i), 0i), Struct_1(false, vec3<u32>(0u, 27923u, 4294967295u), vec2<i32>(0i, 30320i), 22661i), Struct_1(false, vec3<u32>(4294967295u, 1u, 71256u), vec2<i32>(2147483647i, -19820i), -32843i), Struct_1(true, vec3<u32>(4294967295u, 4930u, 37195u), vec2<i32>(i32(-2147483648), -1i), 83933i), Struct_1(false, vec3<u32>(54425u, 4872u, 4294967295u), vec2<i32>(i32(-2147483648), -1i), i32(-2147483648)), Struct_1(false, vec3<u32>(54205u, 68032u, 4294967295u), vec2<i32>(-1i, -55039i), -10477i), Struct_1(false, vec3<u32>(4294967295u, 44561u, 4294967295u), vec2<i32>(0i, 1i), 2147483647i), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 72260u), vec2<i32>(-28547i, 1i), -36557i), Struct_1(false, vec3<u32>(1u, 19464u, 13366u), vec2<i32>(8966i, -510i), 0i), Struct_1(true, vec3<u32>(1u, 24692u, 4294967295u), vec2<i32>(0i, -24847i), -11797i), Struct_1(false, vec3<u32>(58507u, 28196u, 1u), vec2<i32>(36894i, 2147483647i), -1i), Struct_1(true, vec3<u32>(63032u, 4294967295u, 52928u), vec2<i32>(15308i, 18269i), -1i), Struct_1(false, vec3<u32>(1u, 14808u, 43967u), vec2<i32>(61424i, -1i), -3097i), Struct_1(true, vec3<u32>(29618u, 1u, 4294967295u), vec2<i32>(2147483647i, -1i), 1i));

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 16>();
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(step(444f, _wgslsmith_f_op_f32(floor(global1.x))))), vec3<f32>(-1564f, 228f, global1.x));
    let var_0 = Struct_1(min(~_wgslsmith_add_u32(arg_1.x, arg_3.b.x), abs(arg_3.b.x)) != 13344u, vec3<u32>(4294967295u, 28859u, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(2061u, arg_1.x), ~0u)), firstLeadingBit(vec2<i32>(~12422i, ~0i) | vec2<i32>(firstLeadingBit(arg_3.d), 68481i)), arg_0);
    global0 = array<Struct_1, 16>();
    var var_1 = arg_3;
    return var_0.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_1.b.x, _wgslsmith_add_u32(arg_3.b.x, 0u), arg_0.b.x) | (vec4<u32>(u_input.b.x, 0u, 1u, arg_3.b.x) << (countOneBits(vec4<u32>(4294967295u, arg_3.b.x, 1u, arg_1.b.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_1.b.x, arg_0.b.x), countOneBits(1u), ~u_input.b.x, func_2(arg_1.d, arg_3.b.xx, vec3<i32>(arg_1.c.x, arg_0.d, -59168i), Struct_1(true, arg_3.b, arg_1.c, arg_0.c.x))), vec4<u32>(1u, arg_3.b.x, ~4294967295u, arg_3.b.x)));
    var var_1 = ~(~1u);
    var_1 = _wgslsmith_dot_vec4_u32(countOneBits(var_0), vec4<u32>(27144u, arg_0.b.x, 1u, arg_0.b.x));
    let var_2 = Struct_1(arg_0.d >= arg_3.d, abs(vec3<u32>(~(arg_1.b.x & arg_1.b.x), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, arg_0.b.x), _wgslsmith_div_u32(49715u, arg_1.b.x)), ~_wgslsmith_dot_vec2_u32(arg_0.b.xz, vec2<u32>(arg_1.b.x, arg_1.b.x)))), arg_1.c, arg_3.d);
    global0 = array<Struct_1, 16>();
    return arg_0.b.x;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 2936u, 0u >> ((_wgslsmith_mult_u32(100639u, u_input.b.x) & 1u) % 32u), firstTrailingBit(u_input.a) & 27146u), vec4<u32>(~_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.a)), 57045u, u_input.b.x, u_input.b.x), abs(vec4<u32>(func_2(-5764i, vec2<u32>(29212u, u_input.b.x), vec3<i32>(-1i, 1i, -1i), Struct_1(false, vec3<u32>(u_input.a, 18565u, u_input.b.x), vec2<i32>(23504i, 14316i), -82241i)), 23034u | u_input.b.x, u_input.b.x, u_input.b.x) & abs(~vec4<u32>(84923u, u_input.b.x, 23256u, 1u))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 16u)];
    var var_2 = Struct_1(all(!(!vec3<bool>(true, var_1.a, var_1.a))) != all(vec2<bool>(all(vec4<bool>(var_1.a, true, var_1.a, var_1.a)), !var_1.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~var_0.x), func_3(Struct_1(true, var_0.zww, vec2<i32>(var_1.d, 44276i), -26093i), global0[_wgslsmith_index_u32(var_0.x, 16u)], vec2<bool>(false, true), Struct_1(true, var_1.b, vec2<i32>(var_1.c.x, 0i), var_1.d)), firstTrailingBit(~26728u)), var_1.b), ~abs(vec2<i32>(0i, var_1.d)), i32(-1i) * -34226i);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, global1.x, 1206f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(global1.x * -1124f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 910f, -930f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 780f, global1.x) - vec3<f32>(global1.x, global1.x, global1.x)))))));
    var_2 = Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, -2147483647i), reverseBits(var_1.c)) <= var_1.d, ~abs(~vec3<u32>(4294967295u, u_input.b.x, 3685u)), vec2<i32>(_wgslsmith_sub_i32(var_1.c.x, abs(_wgslsmith_mod_i32(61355i, var_2.c.x))), firstLeadingBit(60959i)), -44555i);
    return select(u_input.a, _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(select(u_input.a, ~u_input.b.x, false), 1u)), var_1.a && select(all(vec4<bool>(true, false, var_2.a, false)), all(vec2<bool>(var_1.a, false)), any(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, false, any(vec3<bool>(true, true, false)));
    let var_1 = 24797i == ((((-70367i >> (u_input.a % 32u)) >> (1u % 32u)) & (i32(-1i) * -43890i)) | 1i);
    global0 = array<Struct_1, 16>();
    let var_2 = _wgslsmith_add_u32(16845u, u_input.b.x) & func_1();
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(var_2), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -firstTrailingBit(-vec4<i32>(var_3.d, var_3.c.x, var_3.d, -1i)), 22749i, abs(_wgslsmith_clamp_i32(-1i, ~(~(-55430i)), -var_3.c.x | (var_3.c.x << (4294967295u % 32u)))));
}

