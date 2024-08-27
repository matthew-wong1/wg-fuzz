struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(37632u, 50760u, 0u);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(i32(-2147483648), -1i), 1i), Struct_1(vec2<i32>(-14410i, 1i), 29876i), Struct_1(vec2<i32>(0i, 2147483647i), 2147483647i), Struct_1(vec2<i32>(7092i, -9936i), -4458i), Struct_1(vec2<i32>(1i, 2147483647i), 1i), Struct_1(vec2<i32>(2147483647i, 29531i), 8187i), Struct_1(vec2<i32>(-16031i, 0i), i32(-2147483648)), Struct_1(vec2<i32>(-20334i, 52729i), 2147483647i), Struct_1(vec2<i32>(21449i, -38609i), 8508i), Struct_1(vec2<i32>(-35970i, 2147483647i), 73526i), Struct_1(vec2<i32>(2147483647i, -1i), -24022i), Struct_1(vec2<i32>(-38792i, -1i), 0i), Struct_1(vec2<i32>(47564i, -2530i), -1i), Struct_1(vec2<i32>(0i, 2147483647i), 13604i), Struct_1(vec2<i32>(22454i, 1i), 2003i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 7928i), Struct_1(vec2<i32>(25102i, 36651i), 7245i), Struct_1(vec2<i32>(-29783i, -1i), -55080i), Struct_1(vec2<i32>(-67066i, i32(-2147483648)), -36809i), Struct_1(vec2<i32>(2147483647i, 2147483647i), 24414i), Struct_1(vec2<i32>(0i, -23293i), 9124i), Struct_1(vec2<i32>(36752i, i32(-2147483648)), 40027i), Struct_1(vec2<i32>(-1i, 1i), -1i), Struct_1(vec2<i32>(34630i, -1i), -38486i), Struct_1(vec2<i32>(i32(-2147483648), -23929i), 4474i), Struct_1(vec2<i32>(-6468i, -10476i), -1i));

var<private> global3: array<bool, 23> = array<bool, 23>(true, true, false, true, false, false, false, true, true, true, true, false, false, false, true, true, false, false, false, false, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    global1 = vec2<i32>(~(-1i), ~max(u_input.a, -7943i));
    global3 = array<bool, 23>();
    let var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(9826u << (global0.x % 32u), reverseBits(17400u))), global0.xx);
    let var_1 = arg_2;
    let var_2 = Struct_2(~u_input.e, arg_1.b);
    return !select(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(arg_1.a, 23u)], false, true)), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(var_2.a, 23u)], global3[_wgslsmith_index_u32(u_input.c, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(var_0, 23u)]), vec4<bool>(false, true, false, false), vec4<bool>(global3[_wgslsmith_index_u32(12480u, 23u)], global3[_wgslsmith_index_u32(48058u, 23u)], false, true)), !vec4<bool>(global3[_wgslsmith_index_u32(68078u, 23u)], false, global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(0u, 23u)]), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(49656u, 23u)], global3[_wgslsmith_index_u32(34205u, 23u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(36418u, 23u)], global3[_wgslsmith_index_u32(56084u, 23u)], global3[_wgslsmith_index_u32(82664u, 23u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(arg_1.a, 23u)], true))), vec4<bool>(true, true, true, true));
}

fn func_2() -> Struct_2 {
    global1 = -vec2<i32>(1i >> (abs(1u) % 32u), u_input.b);
    global0 = ~(firstLeadingBit(countOneBits(vec3<u32>(52327u, 37957u, 77283u))) & ~_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.x, 5682u, 6738u), ~vec3<u32>(global0.x, 76943u, u_input.d.x)));
    var var_0 = select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(global0.x, 23u)], global3[_wgslsmith_index_u32(u_input.c, 23u)], all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 23u)], true, false))), vec4<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 23u)], false)) || false, all(!vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 23u)])), true, global3[_wgslsmith_index_u32(global0.x, 23u)]), false), select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_2(~u_input.e, Struct_1(vec2<i32>(u_input.b, -6540i), u_input.b)), Struct_1(countOneBits(vec2<i32>(u_input.b, -1i)), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1020f * -428f))), !func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1007f, 1260f, -673f) + vec3<f32>(728f, 529f, 271f)), Struct_2(u_input.c, Struct_1(vec2<i32>(1i, u_input.a), 0i)), Struct_1(vec2<i32>(21222i, 0i), u_input.b), _wgslsmith_f_op_f32(floor(-1099f))), global3[_wgslsmith_index_u32(12256u << (~select(u_input.d.x, 4294967295u, true) % 32u), 23u)]), true);
    let var_1 = abs(u_input.e);
    global3 = array<bool, 23>();
    return Struct_2(62612u, Struct_1(vec2<i32>(-abs(0i), 34170i), global1.x));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global0 = abs(select(~vec3<u32>(arg_0.a, u_input.c, global0.x), ~vec3<u32>(global0.x, 54849u, 0u), all(vec3<bool>(global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(arg_0.a, 23u)], global3[_wgslsmith_index_u32(0u, 23u)]))) << (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_0.a, 13190u, 1u), vec3<u32>(1u, 0u, 4294967295u), true), ~vec3<u32>(14337u, 31193u, 1u), vec3<u32>(arg_0.a, u_input.d.x, 48851u)) % vec3<u32>(32u))) << (~((_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, global0.x, 19128u), vec3<u32>(arg_0.a, arg_0.a, 1u), vec3<u32>(4294967295u, u_input.c, u_input.d.x)) ^ max(vec3<u32>(7875u, arg_0.a, u_input.c), vec3<u32>(global0.x, global0.x, global0.x))) ^ ~(~vec3<u32>(global0.x, 17276u, u_input.d.x))) % vec3<u32>(32u));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2102f, 1414f, 146f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, 703f, -441f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, 635f, 1995f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1274f, -268f, -194f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-597f, -222f, -429f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, 1000f, -703f)) - vec3<f32>(845f, -1566f, -1211f)))))));
    global3 = array<bool, 23>();
    global0 = _wgslsmith_add_vec3_u32(~(~max(min(vec3<u32>(arg_0.a, 25092u, u_input.e), vec3<u32>(global0.x, arg_0.a, var_0.a)), ~vec3<u32>(global0.x, global0.x, var_0.a))), abs(~min(~vec3<u32>(var_0.a, var_0.a, 0u), vec3<u32>(var_0.a, var_0.a, var_0.a) | vec3<u32>(35191u, arg_0.a, 70799u))));
    return Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b.a, var_0.b.a), max(vec2<i32>(2147483647i, var_0.b.a.x), arg_0.b.a))) >> (~_wgslsmith_mod_vec2_u32(global0.zz, ~global0.xz) % vec2<u32>(32u)), ~u_input.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(func_2(), u_input.a);
    var_0 = func_2().b;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1018f, 514f) - vec2<f32>(-181f, 1034f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) * 248f), 702f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1026f, -1279f) + vec2<f32>(520f, -997f)), vec2<f32>(1000f, 1736f), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-522f, 1076f) - vec2<f32>(218f, 1000f))))))));
    global2 = array<Struct_1, 26>();
    var var_2 = global2[_wgslsmith_index_u32(~func_2().a, 26u)];
    return Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.x, global0.x, 13317u), vec4<u32>(55403u, 26758u, u_input.c, 40888u))) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8527u, 0u, global0.x), vec4<u32>(global0.x, 0u, 0u, 1u)), u_input.c), vec2<u32>(4294967295u, 39966u)), Struct_1(~(-vec2<i32>(global1.x, var_2.b)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2876i, 1i, 0i, -71995i) >> (vec4<u32>(37273u, global0.x, 0u, 17499u) % vec4<u32>(32u)), -vec4<i32>(690i, 10648i, -2147483647i, -18062i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 26>();
    let var_0 = func_1();
    var var_1 = func_1().b;
    let var_2 = var_0;
    let var_3 = _wgslsmith_mod_vec2_i32(select(_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, -42390i), select(var_2.b.a, var_1.a, true)) << ((~vec2<u32>(global0.x, 0u) << (~u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, -1i, -11051i), vec4<i32>(-3870i, 10587i, var_1.b, var_0.b.a.x)), var_1.a.x, select(var_0.b.a.x, var_0.b.a.x, true)), var_1.b), false), select(firstTrailingBit(var_1.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-u_input.b, ~var_0.b.b), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b.a, var_2.b.a), var_2.b.a), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-29704i, var_2.b.a.x)), _wgslsmith_mult_vec2_i32(var_2.b.a, vec2<i32>(var_1.b, -2147483647i)))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1778f, 908f, 163f)) - vec3<f32>(1000f, -385f, -277f)), Struct_2(min(28974u, 1u), Struct_1(var_1.a, var_2.b.b)), var_2.b, -157f).yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_0.a, u_input.d.x, var_2.a), ~vec3<u32>(72080u, var_2.a, 1u), global3[_wgslsmith_index_u32(1577u, 23u)]), ~vec3<u32>(var_0.a, u_input.e, global0.x)) << (select(45718u, max(~var_2.a, ~35698u), true) % 32u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, 603f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(595f, 242f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(1925f)), -780f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1154f, -1004f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1139f, 370f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, 251f)), true)) - vec2<f32>(_wgslsmith_f_op_f32(round(337f)), _wgslsmith_f_op_f32(f32(-1f) * -356f))), true)), firstLeadingBit(vec4<i32>(min(0i, -1i), abs(u_input.b), var_3.x, i32(-1i) * -1i) << (vec4<u32>(global0.x << (66519u % 32u), var_0.a, 13455u << (global0.x % 32u), 1u) % vec4<u32>(32u))), ~(~(~vec4<i32>(-26993i, -1267i, var_2.b.a.x, u_input.b))));
}

