struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(1000f, -279f, -141f, 778f, -422f, -715f, -878f, 584f, 184f, -1211f, 1457f, 542f, -843f, 530f, 947f, 741f, 1298f, -1000f, 1000f, 751f, -609f, 584f, 740f, -1008f, 907f, 757f);

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 24>;

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(33168u, 44604u, 4294967295u, 36879u), vec4<u32>(1u, 0u, 20472u, 4294967295u), vec4<u32>(29724u, 3625u, 0u, 1u), vec4<u32>(15838u, 6248u, 15336u, 19742u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(0u, 1u, 10006u, 48416u), vec4<u32>(16099u, 0u, 58841u, 33363u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(11845u, 17919u, 9010u, 52407u), vec4<u32>(1u, 10499u, 0u, 4294967295u), vec4<u32>(1u, 0u, 14240u, 73541u), vec4<u32>(2860u, 23676u, 51721u, 0u), vec4<u32>(38020u, 0u, 1u, 6299u), vec4<u32>(4294967295u, 6310u, 1u, 4294967295u), vec4<u32>(1u, 37091u, 4294967295u, 60372u), vec4<u32>(4294967295u, 17078u, 1u, 62705u), vec4<u32>(3726u, 34346u, 66998u, 1u), vec4<u32>(87101u, 4294967295u, 62484u, 4294967295u));

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = select(~arg_0.d.b.xz, abs(countOneBits(~(vec2<u32>(arg_0.d.b.x, arg_0.d.b.x) >> (arg_0.c.b.zy % vec2<u32>(32u))))), arg_0.d.e || true);
    var var_1 = select(select(select(vec3<bool>(all(vec3<bool>(true, arg_1, false)), select(false, arg_0.c.d, arg_0.c.e), false), vec3<bool>(true, arg_0.d.d, arg_2 == -2322f), select(!vec3<bool>(arg_0.c.e, arg_0.d.e, false), select(vec3<bool>(true, arg_0.d.d, true), vec3<bool>(false, arg_1, arg_0.c.e), arg_1), arg_0.c.e && true)), select(vec3<bool>(arg_0.d.d, true, !arg_1), vec3<bool>(true, false, !arg_0.d.d), vec3<bool>(true, arg_1, arg_0.c.e)), vec3<bool>(!arg_1, true, all(vec4<bool>(false, arg_1, arg_1, false)))), !select(vec3<bool>(all(vec4<bool>(arg_0.c.e, arg_0.c.d, arg_0.c.e, arg_1)), arg_1 | arg_0.c.e, true), !(!vec3<bool>(true, arg_0.c.d, arg_0.d.e)), true), !vec3<bool>(all(vec2<bool>(false, arg_0.d.d)), false, true));
    var var_2 = arg_0;
    var_1 = vec3<bool>(!var_2.c.e, all(select(select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, arg_0.d.e, true)), vec3<bool>(false, true, arg_0.d.e), vec3<bool>(var_1.x, false, false)), vec3<bool>(true, true, true), !(!vec3<bool>(true, arg_0.c.d, arg_0.c.e)))), arg_0.d.d);
    let var_3 = arg_0.c;
    return var_3;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    global2 = array<vec3<u32>, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 26u)], global4.x), global4.yy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -889f) - vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 26u)], 299f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global4.x - -263f), _wgslsmith_f_op_f32(max(global4.x, global4.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-281f + global4.x), _wgslsmith_f_op_f32(-1000f * -165f))) + vec2<f32>(875f, global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 26u)]))));
    let var_1 = 1000f;
    global4 = vec3<f32>(-389f, _wgslsmith_f_op_f32(abs(-836f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_0.b.x, 26u)]));
    let var_2 = Struct_1(vec3<u32>(~(5049u << (1u % 32u)), max(_wgslsmith_add_u32(~4294967295u, ~arg_1), ~(~7345u)), _wgslsmith_mult_u32(arg_0.a.x, arg_1)), arg_0.b, abs(firstTrailingBit(reverseBits(arg_0.c))) & -vec3<i32>(~3820i, abs(0i), 6932i), !any(select(!vec2<bool>(true, arg_0.e), vec2<bool>(true, false), !vec2<bool>(false, arg_0.d))), true != any(vec2<bool>(false, false)));
    return ~_wgslsmith_dot_vec3_u32(~(~(~var_2.a)), global2[_wgslsmith_index_u32((arg_1 | countOneBits(7384u)) << (1u % 32u), 24u)]);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = func_2(arg_2, arg_0.d, -1303f, func_3(arg_0, arg_0.a.x)).d;
    var var_1 = select(!(!(!(!vec2<bool>(false, arg_0.e)))), !vec2<bool>(!(arg_2.c.e || true), !arg_0.d), select(!vec2<bool>(false, arg_1), !vec2<bool>(all(vec4<bool>(arg_0.e, false, false, arg_2.d.d)), all(vec2<bool>(arg_1, arg_0.e))), !any(!vec4<bool>(false, false, arg_0.e, false))));
    var_0 = arg_2.c.e;
    var_0 = all(vec3<bool>(func_2(arg_2, any(vec3<bool>(true, false, true)), 1301f, _wgslsmith_mod_u32(arg_2.a, 1320u)).c.x != 2147483647i, arg_0.e, all(select(!vec3<bool>(true, arg_1, var_1.x), select(vec3<bool>(arg_0.d, arg_0.e, arg_2.d.d), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), arg_2.c.e))));
    var_1 = select(select(!select(!vec2<bool>(var_1.x, true), vec2<bool>(true, arg_1), !arg_0.d), vec2<bool>(true, false), true), vec2<bool>(arg_1, !(func_2(Struct_2(arg_0.b.x, arg_0.c.zz, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], arg_2.c.b, vec3<i32>(arg_0.c.x, u_input.a, 10523i), arg_0.d, arg_2.d.d), arg_2.d), true, 361f, arg_2.a).d || true)), !(!(!(!vec2<bool>(var_1.x, true)))));
    return Struct_1(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~8003u, 8761u), 24u)] << (~(vec3<u32>(arg_2.d.b.x, arg_2.a, arg_0.a.x) ^ vec3<u32>(arg_0.b.x, 36728u, arg_0.b.x)) % vec3<u32>(32u))), reverseBits(global3[_wgslsmith_index_u32(~arg_2.a, 18u)]) ^ (func_2(arg_2, select(true, false, arg_1), 867f, 1u).b >> (~vec4<u32>(63871u, 0u, 1u, arg_2.d.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(-arg_2.c.c, max(arg_0.c, firstTrailingBit(firstLeadingBit(vec3<i32>(19778i, u_input.a, 12086i)))), func_2(arg_2, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(264f, -1551f))), 1u).c), false, all(!select(vec2<bool>(arg_2.d.e, false), select(vec2<bool>(false, true), vec2<bool>(arg_2.d.e, false), vec2<bool>(false, var_1.x)), !arg_2.d.d)));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!(!vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false)))));
    global2 = array<vec3<u32>, 24>();
    var var_1 = global4.xy;
    global0 = array<f32, 26>();
    let var_2 = _wgslsmith_sub_u32(7709u, ~(~(~4294967295u))) & _wgslsmith_mult_u32(~15891u, firstTrailingBit(16910u));
    return func_4(Struct_1(~global2[_wgslsmith_index_u32(func_3(func_2(Struct_2(4294967295u, vec2<i32>(u_input.a, -23913i), Struct_1(global2[_wgslsmith_index_u32(68945u, 24u)], global3[_wgslsmith_index_u32(158u, 18u)], vec3<i32>(u_input.a, u_input.a, u_input.a), false, var_0.x), Struct_1(global2[_wgslsmith_index_u32(var_2, 24u)], global3[_wgslsmith_index_u32(var_2, 18u)], vec3<i32>(u_input.a, u_input.a, 53206i), var_0.x, true)), true, global0[_wgslsmith_index_u32(0u, 26u)], var_2), 9310u << (var_2 % 32u)), 24u)], ~max(vec4<u32>(var_2, var_2, 4294967295u, 66790u), global3[_wgslsmith_index_u32(var_2, 18u)]) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, var_2, var_2), firstLeadingBit(global3[_wgslsmith_index_u32(var_2, 18u)])), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, -1i) ^ vec3<i32>(13292i, -15738i, -26711i), max(vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))), var_0.x, var_0.x), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x | false, all(var_0)), !(!var_0.ww))), Struct_2(var_2, vec2<i32>(~(i32(-1i) * -19942i), u_input.a), func_2(Struct_2(0u, ~vec2<i32>(u_input.a, u_input.a), func_2(Struct_2(53442u, vec2<i32>(u_input.a, u_input.a), Struct_1(vec3<u32>(1u, 0u, var_2), global3[_wgslsmith_index_u32(var_2, 18u)], vec3<i32>(u_input.a, u_input.a, 14915i), var_0.x, true), Struct_1(vec3<u32>(54289u, 1103u, var_2), global3[_wgslsmith_index_u32(var_2, 18u)], vec3<i32>(u_input.a, -29797i, u_input.a), false, false)), var_0.x, -1837f, var_2), Struct_1(global2[_wgslsmith_index_u32(var_2, 24u)], vec4<u32>(var_2, var_2, var_2, 1u), vec3<i32>(u_input.a, u_input.a, u_input.a), false, var_0.x)), ~var_2 != ~51403u, 284f, 40419u), Struct_1(vec3<u32>(36367u, var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 28594u, 4294967295u, var_2), vec4<u32>(var_2, 0u, var_2, var_2))), ~(~vec4<u32>(4294967295u, var_2, var_2, 1u)), abs(~vec3<i32>(48634i, 1i, 1i)), _wgslsmith_f_op_f32(-global4.x) >= _wgslsmith_f_op_f32(ceil(-250f)), -1436f > _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1286f) * _wgslsmith_f_op_f32(trunc(-454f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 24>();
    global4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global4.x - 1696f), _wgslsmith_f_op_f32(max(-1000f, 807f)), global4.x))))));
    let var_0 = func_1();
    let var_1 = var_0.c.x;
    let var_2 = func_4(Struct_1(global2[_wgslsmith_index_u32(var_0.b.x, 24u)], var_0.b, reverseBits(var_0.c), true, func_4(var_0, false | (global0[_wgslsmith_index_u32(var_0.b.x, 26u)] < global4.x), Struct_2(~1u, _wgslsmith_mod_vec2_i32(vec2<i32>(10783i, -2147483647i), var_0.c.zx), var_0, var_0), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(14032u, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -169f)))).e), any(select(vec2<bool>(true, true), select(vec2<bool>(var_0.e, var_0.e), !vec2<bool>(var_0.d, var_0.e), select(vec2<bool>(false, true), vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, var_0.e))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, var_0.d), vec2<bool>(var_0.e, false)), !vec2<bool>(true, var_0.d)))), Struct_2(~0u, _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, var_1), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(36629i, var_0.c.x)), var_0.c.xz)), var_0, Struct_1(var_0.a, var_0.b, select(reverseBits(var_0.c), -vec3<i32>(u_input.a, var_0.c.x, var_0.c.x), !vec3<bool>(false, var_0.e, false)), var_0.d, all(select(vec2<bool>(true, false), vec2<bool>(true, var_0.d), vec2<bool>(true, true))))), global4.x);
    let var_3 = Struct_1(vec3<u32>(48956u, _wgslsmith_div_u32(0u, ~(~64813u)), ~var_0.a.x), vec4<u32>(1u, _wgslsmith_add_u32((1u & var_2.a.x) >> (7897u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_2.b.x), var_2.a.zx)), 0u, ~(~var_2.a.x)), _wgslsmith_sub_vec3_i32(~min(vec3<i32>(var_2.c.x, var_1, var_0.c.x), var_0.c), vec3<i32>(i32(-1i) * -1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(23219i, 0i, -30777i, 0i), vec4<i32>(var_1, var_2.c.x, var_0.c.x, -2147483647i)))) & abs(var_2.c), !var_0.d, select(true, !func_4(Struct_1(vec3<u32>(4294967295u, var_0.a.x, var_2.a.x), global3[_wgslsmith_index_u32(var_0.b.x, 18u)], vec3<i32>(u_input.a, var_2.c.x, 0i), false, true), false, Struct_2(42530u, vec2<i32>(-2147483647i, var_2.c.x), var_2, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], vec4<u32>(var_2.b.x, 4294967295u, var_2.b.x, var_0.b.x), var_0.c, var_0.e, var_0.d)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)])).e, var_2.e));
    let var_4 = vec4<i32>(0i & _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mult_i32(-22358i, var_3.c.x)), ~1i), firstLeadingBit(~(-var_3.c.x)), -select(var_0.c.x, min(~var_0.c.x, var_1), !var_2.d), ~func_4(var_0, true, Struct_2(4294967295u, var_0.c.xz, func_1(), var_2), _wgslsmith_f_op_f32(f32(-1f) * -906f)).c.x);
    var var_5 = global4.xy;
    let x = u_input.a;
    s_output = StorageBuffer(global4.xx, _wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(1479f - 1300f))), var_5.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(40786u, 26u)] - var_5.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_5.x, -107f, -464f, 1000f), vec4<f32>(global4.x, global4.x, 1069f, var_5.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 540f, -1272f, -273f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(var_0.a.x, 26u)], -1849f) * vec4<f32>(-241f, 304f, global0[_wgslsmith_index_u32(var_2.a.x, 26u)], 581f)), vec4<f32>(global0[_wgslsmith_index_u32(var_2.a.x, 26u)], global4.x, -457f, 801f))))), func_2(Struct_2(_wgslsmith_clamp_u32(1421u, _wgslsmith_mult_u32(var_3.b.x, 0u), ~36959u), func_4(var_0, var_2.a.x != 0u, Struct_2(var_3.a.x, vec2<i32>(-1i, -32599i), Struct_1(vec3<u32>(48688u, 1u, 36781u), vec4<u32>(52812u, var_3.a.x, 1u, 1u), vec3<i32>(var_2.c.x, 1i, 2147483647i), true, var_3.e), Struct_1(vec3<u32>(4294967295u, 1u, 7764u), var_3.b, var_4.yxy, true, var_2.d)), _wgslsmith_div_f32(-415f, var_5.x)).c.yz, func_2(Struct_2(var_0.a.x, var_2.c.zy, Struct_1(var_3.a, vec4<u32>(var_0.b.x, var_3.a.x, var_3.b.x, 19078u), vec3<i32>(var_3.c.x, var_1, 3836i), false, var_0.e), var_0), var_5.x == var_5.x, _wgslsmith_f_op_f32(select(589f, -1048f, false)), 1u), Struct_1(vec3<u32>(var_3.b.x, 42309u, 540u), func_1().b, ~var_0.c, !var_2.d, true)), select(firstLeadingBit(0i), reverseBits(u_input.a), true) <= u_input.a, _wgslsmith_f_op_f32(-1f), 4294967295u).c, vec2<u32>(func_1().b.x, ~(~(var_2.a.x ^ 0u))), abs(~reverseBits(select(var_3.a, var_3.b.wzz, true))));
}

