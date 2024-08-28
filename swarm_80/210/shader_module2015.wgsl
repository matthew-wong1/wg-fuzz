struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(-1170f, 1654f, -1000f, 1000f), vec2<f32>(808f, 373f), true), Struct_1(vec4<f32>(603f, 1000f, -1000f, -1227f), vec2<f32>(-603f, -180f), true), Struct_1(vec4<f32>(-150f, -340f, -444f, 1645f), vec2<f32>(-603f, -352f), false), Struct_1(vec4<f32>(-151f, -2418f, -815f, -514f), vec2<f32>(259f, -336f), true), Struct_1(vec4<f32>(630f, 661f, -1410f, 1994f), vec2<f32>(486f, 765f), true), Struct_1(vec4<f32>(122f, 536f, 647f, -2057f), vec2<f32>(-155f, -1256f), true), Struct_1(vec4<f32>(1410f, 285f, -589f, -1543f), vec2<f32>(631f, -793f), true), Struct_1(vec4<f32>(-1004f, 900f, -200f, -1000f), vec2<f32>(-305f, -719f), false), Struct_1(vec4<f32>(-1136f, -364f, -268f, 367f), vec2<f32>(841f, -1000f), true), Struct_1(vec4<f32>(521f, -926f, -1056f, -613f), vec2<f32>(793f, 1095f), false), Struct_1(vec4<f32>(-914f, 858f, -1303f, 1000f), vec2<f32>(-583f, 2061f), true), Struct_1(vec4<f32>(-985f, -194f, 1595f, -207f), vec2<f32>(-724f, 568f), true), Struct_1(vec4<f32>(507f, 1142f, -878f, -296f), vec2<f32>(1864f, -1000f), true), Struct_1(vec4<f32>(-896f, -277f, -899f, -157f), vec2<f32>(1000f, -2567f), true), Struct_1(vec4<f32>(-1737f, -338f, -162f, -328f), vec2<f32>(-1000f, 963f), true), Struct_1(vec4<f32>(-2441f, 478f, -1589f, -1671f), vec2<f32>(-730f, -725f), true), Struct_1(vec4<f32>(201f, -1399f, -640f, 225f), vec2<f32>(223f, -518f), false), Struct_1(vec4<f32>(293f, 1032f, -1000f, -180f), vec2<f32>(411f, 417f), false), Struct_1(vec4<f32>(1609f, -168f, -1655f, -1000f), vec2<f32>(1073f, -1000f), false), Struct_1(vec4<f32>(-115f, 1525f, -1003f, -1000f), vec2<f32>(-1000f, 151f), false));

var<private> global1: vec2<f32>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(exp2(global3.a.x)), 430f, _wgslsmith_div_f32(global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global3.a, vec4<f32>(100f, global3.a.x, 1616f, global1.x), vec4<bool>(arg_0.c, global3.c, global2.x, global3.c))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(global1.x, 2187f, arg_0.a.x, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1041f, global3.a.x, -944f)))), vec2<f32>(_wgslsmith_f_op_f32(-1710f - 1331f), global1.x), true);
    let var_0 = abs(vec3<i32>(-(u_input.a.x | 10055i), _wgslsmith_sub_i32(u_input.d.x, ~abs(0i)), u_input.b));
    global2 = vec4<bool>(true, !(!arg_0.c), arg_0.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x, ~u_input.c.x), 21801u) > ~abs(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)));
    var var_1 = u_input.c.x;
    var var_2 = !any(select(!vec4<bool>(global3.c, global3.c, false, false), select(!vec4<bool>(global2.x, true, global3.c, arg_0.c), !vec4<bool>(true, true, global3.c, false), u_input.b > var_0.x), true));
    return vec4<u32>(45196u, 1u | ~u_input.c.x, abs(1u), u_input.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_2.x, 20u)];
    global0 = array<Struct_1, 20>();
    var var_1 = ~24533u;
    var var_2 = u_input.c.x;
    var_2 = _wgslsmith_mult_u32(select(~0u, arg_2.x, false), u_input.c.x);
    return 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = global0[_wgslsmith_index_u32(~func_4(arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(707f, -631f, global3.b.x, global1.x))), arg_2.a.zx, false), _wgslsmith_clamp_vec4_u32(func_3(Struct_1(arg_2.a, vec2<f32>(arg_2.a.x, 820f), true)), ~(~vec4<u32>(37937u, 4294967295u, u_input.c.x, 54705u)), abs(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)))), 20u)];
    var var_2 = global0[_wgslsmith_index_u32((0u >> (~(~firstTrailingBit(u_input.c.x)) % 32u)) >> ((func_3(Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_1.a)), var_0.b, all(vec4<bool>(false, arg_1, true, arg_1)))).x ^ ~37125u) % 32u), 20u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 881f, 262f, -1386f) + _wgslsmith_f_op_vec4_f32(floor(global3.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(exp2(var_1.b.x))), global3.b) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(855f, global3.a.x), _wgslsmith_f_op_vec2_f32(-var_2.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global3.a.x)))))))), false);
    let var_4 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    return global0[_wgslsmith_index_u32(0u, 20u)];
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = func_2(-abs(~select(vec2<i32>(u_input.b, -1i), vec2<i32>(arg_2, u_input.a.x), global2.zz)), all(global2.xyy), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, arg_0), 20u)]);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~37486u, 1u), ~firstLeadingBit(u_input.c.zx)) & _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.xx, u_input.c.zx), u_input.c.xx)), ~u_input.c.zx), 20u)];
    global2 = select(!vec4<bool>(global2.x, !global2.x, true, all(!global2.ww)), select(vec4<bool>(all(!vec4<bool>(global3.c, false, false, global2.x)), false, arg_1, !all(vec3<bool>(false, true, true))), vec4<bool>(true && global3.c, all(!global2.ww), arg_1, 0u >= (0u << (u_input.c.x % 32u))), select(!(!vec4<bool>(var_0.c, false, arg_1, var_0.c)), select(vec4<bool>(false, var_0.c, global2.x, global3.c), vec4<bool>(arg_1, global2.x, var_0.c, global2.x), !vec4<bool>(var_0.c, arg_1, global2.x, arg_1)), global3.c)), select(!(!select(vec4<bool>(global2.x, var_0.c, false, true), vec4<bool>(false, false, arg_1, global3.c), true)), select(select(!vec4<bool>(true, false, arg_1, global3.c), vec4<bool>(false, true, true, true), select(false, var_0.c, true)), !select(vec4<bool>(true, arg_1, var_0.c, arg_1), vec4<bool>(arg_1, true, arg_1, false), arg_1), select(select(vec4<bool>(true, var_0.c, false, false), vec4<bool>(var_0.c, var_0.c, arg_1, false), global2.x), vec4<bool>(arg_1, global2.x, false, true), !vec4<bool>(var_0.c, global2.x, arg_1, arg_1))), vec4<bool>(global2.x, any(select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(arg_1, global2.x, true), vec3<bool>(true, false, true))), true, global3.c)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    global3 = global0[_wgslsmith_index_u32(1u, 20u)];
    return ~_wgslsmith_mult_i32(-firstTrailingBit(u_input.d.x), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz, ~vec2<u32>(_wgslsmith_add_u32(1u, 22769u >> (u_input.c.x % 32u)), _wgslsmith_div_u32(0u, 1u)), u_input.c.x, -vec4<i32>(-(~u_input.a.x), -_wgslsmith_sub_i32(u_input.a.x, u_input.b), countOneBits(-4033i), ~func_1(82251u, true, u_input.d.x)), firstTrailingBit(_wgslsmith_div_i32(u_input.d.x ^ ~u_input.b, _wgslsmith_add_i32(u_input.a.x, 2147483647i) | func_1(19973u, true, -1i))));
}

