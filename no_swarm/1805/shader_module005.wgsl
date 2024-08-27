struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: Struct_5 = Struct_5(false, vec4<f32>(-1820f, 1839f, -718f, -180f), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), Struct_1(vec4<bool>(false, false, true, false), true, vec3<bool>(true, true, true)), Struct_3(vec4<i32>(2147483647i, 0i, 18377i, -7792i), Struct_1(vec4<bool>(false, false, false, true), false, vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, false, true), true, vec3<bool>(false, true, true))));

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<i32>(-7154i, 22588i, 6924i, 18328i), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, false, false, true), true, vec3<bool>(false, true, false))), Struct_3(vec4<i32>(29414i, i32(-2147483648), 5375i, -6754i), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, true, true, false), false, vec3<bool>(true, false, false))), Struct_3(vec4<i32>(-17021i, 52986i, -1i, -19413i), Struct_1(vec4<bool>(false, false, false, false), true, vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, true, true), false, vec3<bool>(false, true, true))), Struct_3(vec4<i32>(20320i, -1i, 43812i, -5086i), Struct_1(vec4<bool>(true, true, true, true), false, vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, false, true), true, vec3<bool>(true, false, false))), Struct_3(vec4<i32>(2147483647i, 2983i, 16399i, 43606i), Struct_1(vec4<bool>(false, true, false, true), true, vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, true, true, false), true, vec3<bool>(true, true, true))), Struct_3(vec4<i32>(-6493i, -1i, i32(-2147483648), -43627i), Struct_1(vec4<bool>(false, true, true, false), false, vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(true, true, false))), Struct_3(vec4<i32>(i32(-2147483648), -1i, -65787i, -1i), Struct_1(vec4<bool>(true, false, false, true), true, vec3<bool>(false, false, false)), Struct_1(vec4<bool>(false, true, false, false), false, vec3<bool>(false, false, true))), Struct_3(vec4<i32>(-4251i, i32(-2147483648), 0i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(false, false, true))), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -66266i), Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, false, true, true), false, vec3<bool>(true, true, true))), Struct_3(vec4<i32>(-32123i, i32(-2147483648), -5956i, -1i), Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, false, true, false), false, vec3<bool>(true, false, false))), Struct_3(vec4<i32>(0i, -24600i, 32959i, -17005i), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(false, true, false))), Struct_3(vec4<i32>(2147483647i, 64661i, i32(-2147483648), 0i), Struct_1(vec4<bool>(true, true, false, true), false, vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, false, true, false), true, vec3<bool>(true, false, false))), Struct_3(vec4<i32>(2147483647i, -13760i, 23119i, -4205i), Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, true, false, true), false, vec3<bool>(false, false, false))), Struct_3(vec4<i32>(-1i, 0i, -59072i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), false, vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, false, false, true), false, vec3<bool>(true, false, false))), Struct_3(vec4<i32>(2147483647i, 2147483647i, 50897i, 0i), Struct_1(vec4<bool>(true, true, true, false), true, vec3<bool>(false, false, true)), Struct_1(vec4<bool>(false, false, false, true), false, vec3<bool>(false, false, false))), Struct_3(vec4<i32>(27429i, 2618i, 1i, i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, false), true, vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, false, false, true), true, vec3<bool>(false, false, false))), Struct_3(vec4<i32>(7124i, 2911i, 2147483647i, 1i), Struct_1(vec4<bool>(false, false, true, false), true, vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, true, false), true, vec3<bool>(false, false, false))), Struct_3(vec4<i32>(i32(-2147483648), -28236i, 1i, -5055i), Struct_1(vec4<bool>(true, false, true, true), true, vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(true, false, false))), Struct_3(vec4<i32>(17264i, -31740i, -36212i, -36033i), Struct_1(vec4<bool>(false, true, false, true), false, vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, false, true), false, vec3<bool>(false, false, true))), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i), Struct_1(vec4<bool>(false, true, false, true), true, vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, false, true, false), false, vec3<bool>(true, false, true))), Struct_3(vec4<i32>(17986i, i32(-2147483648), -1i, 31638i), Struct_1(vec4<bool>(true, true, true, false), true, vec3<bool>(false, true, true)), Struct_1(vec4<bool>(false, true, false, true), true, vec3<bool>(false, true, false))), Struct_3(vec4<i32>(-22130i, 1i, -34972i, -26791i), Struct_1(vec4<bool>(true, false, true, true), true, vec3<bool>(false, true, true)), Struct_1(vec4<bool>(false, true, false, true), false, vec3<bool>(false, true, false))), Struct_3(vec4<i32>(6758i, i32(-2147483648), 8262i, 2147483647i), Struct_1(vec4<bool>(false, true, false, true), false, vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, false, true, true), false, vec3<bool>(true, true, true))), Struct_3(vec4<i32>(40612i, 51233i, 21976i, -1i), Struct_1(vec4<bool>(false, false, true, true), false, vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, true, true), false, vec3<bool>(true, true, false))));

var<private> global3: array<bool, 9> = array<bool, 9>(false, true, true, true, true, true, false, false, false);

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_3 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = Struct_4(!global4.c.a.x);
    global2 = array<Struct_3, 24>();
    let var_1 = var_0;
    global4 = arg_0;
    return Struct_3(global4.a, global4.b, Struct_1(vec4<bool>(true, true, (global3[_wgslsmith_index_u32(18107u, 9u)] && true) || true, true), false, vec3<bool>(true, true, true)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = global1.d.a;
    var var_2 = Struct_5(true && any(!global1.e.c.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), global1.b.x)), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), -1234f), vec4<u32>(~4294967295u, ~1u & (max(global1.c.x, 49863u) | ~0u), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_dot_vec4_u32(global1.c, vec4<u32>(u_input.a, 32411u, 5149u, 1u))), abs(_wgslsmith_add_u32(arg_0.x & u_input.a, 1u))), func_2(func_2(global2[_wgslsmith_index_u32(arg_0.x, 24u)], vec2<i32>(-1i, -2147483647i)), vec2<i32>(-10605i, 1i)).c, global2[_wgslsmith_index_u32(arg_0.x, 24u)]);
    let var_3 = global1.b;
    global4 = Struct_3(max(select(countOneBits(vec4<i32>(global1.e.a.x, global4.a.x, var_2.e.a.x, var_2.e.a.x)), min(vec4<i32>(-1i, global4.a.x, -24030i, 0i), vec4<i32>(31455i, global1.e.a.x, global1.e.a.x, var_2.e.a.x)), func_2(func_2(Struct_3(global4.a, global4.c, global4.c), var_2.e.a.yy), vec2<i32>(0i, global4.a.x)).b.a), vec4<i32>(~global1.e.a.x, 1i >> (arg_0.x % 32u), -1i, global4.a.x) & ~vec4<i32>(29332i, 49734i, var_2.e.a.x, 2147483647i)), Struct_1(!select(select(vec4<bool>(false, true, var_1.x, var_2.d.c.x), global1.d.a, vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(global1.c.x, 9u)], var_1.x)), global1.e.b.a, !var_2.e.b.a), global4.c.b, !(!select(global4.b.a.yzw, global4.c.a.zxx, vec3<bool>(var_1.x, true, true)))), Struct_1(global4.b.a, !var_1.x, select(func_2(Struct_3(var_2.e.a, global1.e.b, Struct_1(vec4<bool>(true, global1.e.b.b, false, false), global4.b.a.x, global4.c.c)), _wgslsmith_clamp_vec2_i32(var_2.e.a.yx, vec2<i32>(1i, -2147483647i), global1.e.a.xy)).b.a.xyz, global1.e.c.c, all(vec3<bool>(global4.b.b, true, true)) && func_2(global1.e, vec2<i32>(64263i, global1.e.a.x)).c.a.x)));
    return _wgslsmith_dot_vec4_i32(func_2(var_2.e, vec2<i32>(global1.e.a.x, ~global1.e.a.x) >> (~min(var_2.c.yz, vec2<u32>(var_2.c.x, 1u)) % vec2<u32>(32u))).a, global1.e.a);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = func_2(global2[_wgslsmith_index_u32(arg_3.x, 24u)], vec2<i32>(_wgslsmith_div_i32(min(arg_0, -9885i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global4.a.x, 1i), global4.a.wxw)) << (~global1.c.x % 32u), -2147483647i));
    let var_1 = vec4<i32>(abs(func_3(arg_3.xz >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), global1.b.x)), global1.e.a.x, arg_1, -_wgslsmith_dot_vec2_i32(var_0.a.wz & var_0.a.zx, -global4.a.ww)) ^ vec4<i32>(~(arg_1 & (i32(-1i) * -21310i)), abs(~(~global4.a.x)), min(countOneBits(2147483647i), 0i), -23329i);
    global1 = Struct_5(true, vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f - global1.b.x))), _wgslsmith_f_op_f32(select(-759f, 1042f, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(global1.c.x, 4294967295u), 62145u ^ arg_3.x), 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(-arg_2))), global1.c, func_2(Struct_3(vec4<i32>(2117i, global4.a.x, -1i, 55185i) | (vec4<i32>(-2147483647i, var_1.x, 17242i, arg_1) >> (vec4<u32>(arg_3.x, arg_3.x, 12684u, 17787u) % vec4<u32>(32u))), Struct_1(!global4.c.a, true, vec3<bool>(true, var_0.c.a.x, true)), func_2(Struct_3(var_0.a, global1.e.c, global4.b), var_0.a.ww).b), var_0.a.xx).b, Struct_3(max(vec4<i32>(firstLeadingBit(17656i), 1i, global1.e.a.x, -u_input.c), vec4<i32>(func_2(Struct_3(global1.e.a, Struct_1(vec4<bool>(var_0.b.b, true, var_0.b.a.x, global1.e.b.b), true, global1.d.a.zzy), var_0.c), vec2<i32>(arg_0, arg_0)).a.x, -1i >> (global1.c.x % 32u), 2147483647i, global4.a.x)), func_2(Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, 1i, 21125i), vec4<i32>(1i, -1i, arg_1, global4.a.x), var_1), Struct_1(vec4<bool>(false, true, global4.c.a.x, var_0.b.c.x), true, vec3<bool>(global1.a, global3[_wgslsmith_index_u32(1u, 9u)], var_0.b.a.x)), func_2(global2[_wgslsmith_index_u32(arg_3.x, 24u)], global1.e.a.xx).c), -global4.a.zz).c, Struct_1(global4.c.a, true, vec3<bool>(false, any(vec2<bool>(global1.a, false)), false))));
    var var_2 = ~firstTrailingBit(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(10010u, 1u, 32391u), vec3<u32>(21316u, u_input.a, 57351u))));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -544f)))), global1.b.x))));
    return StorageBuffer(global1.e.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1.e;
    let var_0 = global1.b.xx;
    let var_1 = 1u;
    var var_2 = global4.a.yzx;
    global2 = array<Struct_3, 24>();
    global3 = array<bool, 9>();
    let x = u_input.a;
    s_output = func_1(-54597i, -9185i, 103f, _wgslsmith_mult_vec3_u32(~vec3<u32>(~40270u, u_input.a, 76648u ^ var_1), vec3<u32>(19654u, select(1u, abs(global1.c.x), global1.b.x > -426f), 18346u)));
}

