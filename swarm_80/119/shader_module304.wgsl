struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(6768u, vec3<u32>(4294967295u, 0u, 0u), 4294967295u, vec4<f32>(-983f, 979f, 566f, 101f), true);

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, false, false), vec3<u32>(13541u, 1u, 85183u), vec2<f32>(-732f, 842f), -45768i, Struct_1(14672u, vec3<u32>(12433u, 75624u, 4294967295u), 9231u, vec4<f32>(-1905f, 1358f, 460f, 1213f), true));

var<private> global2: array<f32, 32>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    let var_0 = Struct_1(7312u, vec3<u32>(22974u, global3.c, _wgslsmith_sub_u32(global3.b.x | ~global1.b.x, global0.a)), _wgslsmith_clamp_u32(~global0.a, global0.b.x, 4294967295u << (reverseBits(~global3.b.x) % 32u)), global1.e.d, global3.e);
    let var_1 = global1.e.a;
    global0 = Struct_1(global3.c, var_0.b, abs(global1.e.c | 5857u), global1.e.d, !global3.e);
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(select(1i, _wgslsmith_sub_i32(-22643i, -1i), true), ~(~(-44319i << (0u % 32u))), firstTrailingBit(~abs(u_input.b))), vec3<i32>(-1i, -36906i, 1i));
    let var_3 = var_0.e;
    return vec2<i32>(global1.d, 16792i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    global3 = Struct_1(global3.b.x, vec3<u32>(_wgslsmith_sub_u32(global3.a ^ ~19028u, ~1u), max((global0.c & global0.c) >> ((22478u << (global0.c % 32u)) % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.b.x, 29817u, global1.e.a, global3.b.x)), ~vec4<u32>(global3.b.x, 41691u, global1.e.c, global0.a))), select(global0.c >> (~global3.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(60222u, global1.e.a), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 14336u), global1.b.yz)), true)), ~global1.e.a, vec4<f32>(-472f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.c, 4294967295u, 1u), vec4<u32>(0u, 3620u, 156787u, 4294967295u))), 32u)] + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(432f - 126f)))), _wgslsmith_f_op_f32(trunc(global3.d.x)), _wgslsmith_f_op_f32(abs(775f))), all(vec2<bool>(global0.e, global3.e)));
    let var_0 = Struct_2(select(!select(!global1.a, select(vec3<bool>(global1.a.x, true, false), vec3<bool>(false, true, true), global0.e), global3.e), vec3<bool>(true, true, any(vec2<bool>(global0.e, global0.e))), vec3<bool>(false, false & (global1.e.e || global0.e), global0.e)), global3.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-350f, global3.d.x) + _wgslsmith_f_op_f32(sign(-643f)))), -736f), -select(arg_2, u_input.b, !(arg_0.x != global1.d)), global1.e);
    let var_1 = global1.e.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.d.x), _wgslsmith_f_op_f32(global3.d.x - -706f), 375f, _wgslsmith_f_op_f32(-var_0.e.d.x))))));
    let var_3 = Struct_2(vec3<bool>(false, false, !all(vec3<bool>(false, false, true))), ~(~vec3<u32>(1u, global0.c, 4294967295u)) & global1.e.b, global1.c, firstLeadingBit(2147483647i), Struct_1(0u, global3.b, ~1u, global1.e.d, false));
    return (~(~_wgslsmith_sub_u32(var_3.e.c, 1u)) << (max(85769u, firstTrailingBit(_wgslsmith_clamp_u32(39456u, global1.b.x, 1u))) % 32u)) | (_wgslsmith_add_u32(_wgslsmith_mult_u32(select(21665u, var_0.b.x, true), ~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b.x, 1u), vec3<u32>(global3.a, var_0.e.a, 52153u))) & ~global0.a);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(min(firstLeadingBit(~4294967295u) >> (func_4(func_3(u_input.b), -vec2<i32>(u_input.b, 15455i), ~arg_0.x) % 32u), global0.a), ~vec3<u32>(~(global3.b.x ^ 4294967295u), ~(~45698u), _wgslsmith_add_u32(global0.a << (global1.e.c % 32u), 72576u)), abs(max(global0.b.x, ~(~88942u))), global0.d, global1.a.x);
    let var_1 = Struct_2(!select(vec3<bool>(false, true, any(global1.a)), vec3<bool>(false, 6625i <= arg_0.x, var_0.e & var_0.e), !vec3<bool>(false, var_0.e, global3.e)), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global3.d.yx - vec2<f32>(global1.c.x, global2[_wgslsmith_index_u32(global1.b.x, 32u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.zw))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, global0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2434f, 1000f) + global1.c)), true))), global1.d, global1.e);
    global2 = array<f32, 32>();
    global1 = Struct_2(vec3<bool>(!var_1.e.e, true, true), vec3<u32>(~(~(global0.a >> (69175u % 32u))), max(~global0.b.x, _wgslsmith_dot_vec3_u32(global3.b, var_1.e.b)), firstLeadingBit(~13623u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_0.d.yx, vec2<f32>(_wgslsmith_f_op_f32(-929f * global1.c.x), _wgslsmith_f_op_f32(-var_0.d.x))), vec2<f32>(367f, global2[_wgslsmith_index_u32(~global1.e.a, 32u)]))), firstTrailingBit(u_input.b), Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(26727u, global1.b.x), global1.e.b.yy), 0u), global3.b, _wgslsmith_mult_u32(~select(0u, global0.c, global1.a.x), ~select(12894u, var_0.c, global0.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(max(-269f, -2166f)), global0.d.x, var_1.e.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d.x, var_0.d.x, global2[_wgslsmith_index_u32(global1.b.x, 32u)], global1.c.x))) + global3.d), !select(true, true, true))), false));
    global2 = array<f32, 32>();
    return Struct_2(!vec3<bool>(_wgslsmith_f_op_f32(-485f + var_1.e.d.x) >= _wgslsmith_f_op_f32(ceil(-1000f)), select(true, true, global0.e), -2166f != global2[_wgslsmith_index_u32(global1.e.b.x, 32u)]), ~(~vec3<u32>(_wgslsmith_clamp_u32(0u, 63744u, 5999u), abs(global3.b.x), 6490u)), vec2<f32>(-213f, global3.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mult_i32(var_1.d, abs(arg_0.x)), 2147483647i)), var_0);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global3 = global1.e;
    global2 = array<f32, 32>();
    global1 = func_2(-vec2<i32>(u_input.b, countOneBits(~(-2147483647i))));
    global0 = global1.e;
    var var_0 = Struct_1(global0.c, ~abs(global3.b), abs(~min(global3.a, _wgslsmith_div_u32(27960u, global3.a))), global3.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.e.a, global3.b.x), ~global0.b) != ~_wgslsmith_dot_vec2_u32(~global3.b.xy, ~global1.e.b.yx));
    return Struct_2(!global1.a, ~min(abs(abs(var_0.b)), vec3<u32>(global1.b.x << (37628u % 32u), _wgslsmith_div_u32(1u, 1u), ~arg_0.x)), global1.c, ~global1.d, func_2(vec2<i32>(_wgslsmith_mod_i32(global1.d & -22758i, u_input.b), -29280i)).e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, global1.c.x, global0.d.x))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, -537f, global0.d.x) - _wgslsmith_f_op_vec3_f32(global1.e.d.yxw + global3.d.xyw))))));
    global0 = global1.e;
    global1 = func_1(firstLeadingBit(global1.b.xz));
    global3 = func_1(~(global3.b.xx ^ ((vec2<u32>(61968u, global1.b.x) & global0.b.zy) & ~global1.b.zz))).e;
    let var_1 = Struct_2(vec3<bool>(true | global1.a.x, true, false), select(global1.e.b, abs(max(~vec3<u32>(1u, global1.b.x, 4552u), global0.b)), false), func_2(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yz, -u_input.a.zz, vec2<i32>(u_input.a.x, 1i)), u_input.a.yz)).c, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), func_2(vec2<i32>(u_input.a.x, -14846i)).d), ~(-29594i)), -select(-36923i, _wgslsmith_mod_i32(-13961i, 1466i), false)), global1.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + _wgslsmith_f_op_vec4_f32(select(global1.e.d, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), global0.d.x, global1.e.d.x, _wgslsmith_f_op_f32(682f + global0.d.x)), select(true, global1.a.x, select(global1.a.x, var_1.e.e, var_1.a.x))))), func_1(countOneBits(global1.b.xx)).e.d, !all(global1.a)));
    var_2 = global3.d;
    var var_3 = global1.e;
    var var_4 = 2311i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2221f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1245f + 709f)))), 1331f);
}

