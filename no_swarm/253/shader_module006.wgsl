struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(80778u, 64261u, 0u), vec3<u32>(0u, 14951u, 0u), vec3<u32>(5467u, 10473u, 21825u), vec3<u32>(1u, 0u, 32489u), vec3<u32>(13033u, 4294967295u, 1u), vec3<u32>(1u, 1u, 59671u), vec3<u32>(36482u, 29702u, 1u), vec3<u32>(41399u, 57891u, 4294967295u), vec3<u32>(12071u, 17722u, 4294967295u), vec3<u32>(29454u, 1u, 33675u), vec3<u32>(100587u, 4294967295u, 0u), vec3<u32>(31314u, 4294967295u, 1393u), vec3<u32>(4294967295u, 38294u, 31445u), vec3<u32>(1u, 40412u, 60605u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(40389u, 29121u, 1u), vec3<u32>(0u, 0u, 42615u), vec3<u32>(19066u, 0u, 26469u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(76125u, 1u, 2787u), vec3<u32>(4294967295u, 22015u, 1u), vec3<u32>(1u, 4294967295u, 1804u), vec3<u32>(1u, 42633u, 68020u), vec3<u32>(4294967295u, 33081u, 1u));

var<private> global1: vec2<f32>;

var<private> global2: vec3<i32> = vec3<i32>(1i, -536i, 501i);

var<private> global3: Struct_1;

var<private> global4: array<u32, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.c)), _wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global3.c) - vec2<f32>(global1.x, 923f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, 1079f) + vec2<f32>(932f, -402f)))), select(vec2<bool>(true, true), vec2<bool>(global1.x < -434f, global3.d.x), select(vec2<bool>(true, true), !global3.d, !vec2<bool>(global3.d.x, false))))), vec2<f32>(_wgslsmith_f_op_f32(max(global3.c, -1000f)), _wgslsmith_f_op_f32(1547f - _wgslsmith_f_op_f32(select(928f, _wgslsmith_f_op_f32(-468f - arg_0), all(vec3<bool>(global3.d.x, global3.d.x, true)))))));
    let var_0 = Struct_1(_wgslsmith_add_i32(-1i, global2.x), ~reverseBits(vec3<i32>(~global2.x, _wgslsmith_mod_i32(global2.x, global3.b.x), _wgslsmith_sub_i32(global2.x, 35962i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.c, global3.c))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(arg_0 + -1000f)))))), select(global3.d, !global3.d, vec2<bool>((global3.c == 630f) && (global3.d.x & global3.d.x), false)), countOneBits(max(select(~vec3<i32>(global3.e.x, -17881i, 15338i), abs(global3.e), !global3.d.x), global3.e ^ (vec3<i32>(global3.b.x, global2.x, 8652i) << (vec3<u32>(4294967295u, 1u, 50303u) % vec3<u32>(32u))))));
    global0 = array<vec3<u32>, 24>();
    let var_1 = var_0;
    global4 = array<u32, 18>();
    return _wgslsmith_f_op_f32(856f * _wgslsmith_f_op_f32(abs(-443f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = !(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, 0u, 7725u), min(u_input.a, global0[_wgslsmith_index_u32(1u, 24u)])), vec3<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 0u ^ global4[_wgslsmith_index_u32(0u, 18u)], 14592u)) < 11588u);
    var var_1 = select(vec3<bool>(global3.d.x, any(vec4<bool>(false, global3.d.x, true, global3.d.x)), select(!(!arg_0.d.x), (arg_2.c >= arg_1) || true, arg_2.d.x & global3.d.x)), !select(!select(vec3<bool>(global3.d.x, arg_0.d.x, false), vec3<bool>(arg_2.d.x, global3.d.x, true), global3.d.x), !(!vec3<bool>(true, true, arg_0.d.x)), !(!vec3<bool>(true, arg_2.d.x, arg_0.d.x))), vec3<bool>(global3.d.x, any(!vec3<bool>(global3.d.x, true, arg_2.d.x)), _wgslsmith_f_op_f32(func_3(arg_1)) >= _wgslsmith_f_op_f32(ceil(326f))));
    var var_2 = arg_0;
    let var_3 = var_2.c;
    global0 = array<vec3<u32>, 24>();
    return _wgslsmith_f_op_f32(-arg_3.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global2.x, ~vec3<i32>(global2.x, global2.x, 1i), _wgslsmith_f_op_f32(func_4(Struct_1(firstLeadingBit(-1i), countOneBits(~global3.e), global1.x, !(!vec2<bool>(true, global3.d.x)), vec3<i32>(global3.b.x, global3.b.x, ~(-1i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(-359f)))), Struct_1(global2.x, countOneBits(~global3.e), -150f, select(vec2<bool>(true, false), select(vec2<bool>(global3.d.x, true), global3.d, global3.d.x), vec2<bool>(true, false)), select(global3.b, vec3<i32>(global2.x, global2.x, 0i), global3.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 752f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(-298f, 701f)))))), vec2<bool>(!any(vec4<bool>(global3.d.x, true, false, global3.d.x)) & global3.d.x, global3.d.x), -(~(~(~vec3<i32>(0i, 9439i, global3.e.x)))));
    global1 = vec2<f32>(_wgslsmith_div_f32(-1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c, _wgslsmith_f_op_f32(ceil(global3.c)))))), -1824f);
    global3 = var_0;
    global3 = Struct_1(abs(-45035i), global3.b, -1781f, select(!(!global3.d), var_0.d, true), ~firstLeadingBit(var_0.b));
    var var_1 = Struct_1(~(-(global3.e.x << (u_input.a.x % 32u))) ^ firstLeadingBit(22076i), var_0.b, 690f, select(vec2<bool>(false, true), select(global3.d, global3.d, var_0.d), !select(select(var_0.d, vec2<bool>(true, var_0.d.x), vec2<bool>(true, true)), !global3.d, var_0.d)), _wgslsmith_add_vec3_i32(~(_wgslsmith_mult_vec3_i32(var_0.e, var_0.e) & min(vec3<i32>(-89842i, -2610i, var_0.e.x), global3.b)), _wgslsmith_mult_vec3_i32(select(var_0.b >> (vec3<u32>(global4[_wgslsmith_index_u32(27284u, 18u)], global4[_wgslsmith_index_u32(113392u, 18u)], u_input.a.x) % vec3<u32>(32u)), countOneBits(vec3<i32>(-1i, 13353i, global2.x)), vec3<bool>(var_0.d.x, global3.d.x, global3.d.x)), ~(vec3<i32>(-32485i, global2.x, -24379i) & vec3<i32>(10873i, -1i, 2147483647i)))));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = func_2();
    global3 = Struct_1(~global3.a, ~countOneBits(~vec3<i32>(var_0.a, -1i, -1i)), _wgslsmith_f_op_f32(step(var_0.c, var_0.c)), func_2().d, vec3<i32>(-(i32(-1i) * -2147483647i), 1i, firstTrailingBit(-50679i)) << (u_input.a % vec3<u32>(32u)));
    global3 = Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(firstLeadingBit(global3.b.yz)), global2.yz | vec2<i32>(abs(global2.x), ~global2.x)), vec3<i32>(72844i, ~(~arg_2), -1i), _wgslsmith_f_op_f32(-global3.c), !var_0.d, -(~global3.b));
    var var_1 = func_2();
    var var_2 = 41128u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1466i, global3.d.x && global3.d.x, -1i);
    let var_1 = var_0.e.x;
    global0 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~(41362i ^ select(_wgslsmith_mult_i32(16765i, -27604i), ~var_1, func_1(global3.e.x, false, -14395i).d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-459f)), _wgslsmith_f_op_f32(f32(-1f) * -125f))), vec4<u32>(~u_input.a.x, u_input.a.x, 1u, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(11424u, ~0u), 18u)]));
}

