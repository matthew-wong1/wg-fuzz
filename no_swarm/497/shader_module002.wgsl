struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<f32, 25>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(141199u, 25585u, 4294967295u), vec4<bool>(false, true, true, false), 44198i, vec2<bool>(true, false)), Struct_1(vec3<u32>(58343u, 4294967295u, 17956u), vec4<bool>(true, false, true, false), 2147483647i, vec2<bool>(true, true)), Struct_1(vec3<u32>(17788u, 33479u, 42015u), vec4<bool>(false, true, true, true), -24793i, vec2<bool>(false, true)), Struct_1(vec3<u32>(0u, 1u, 60095u), vec4<bool>(false, true, false, true), 2147483647i, vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 25931u, 21792u), vec4<bool>(true, true, true, true), i32(-2147483648), vec2<bool>(true, false)), Struct_1(vec3<u32>(14337u, 1u, 31578u), vec4<bool>(false, true, false, false), i32(-2147483648), vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(false, true, false, false), -1i, vec2<bool>(false, true)), Struct_1(vec3<u32>(68239u, 63924u, 4294967295u), vec4<bool>(true, true, true, false), i32(-2147483648), vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 0u, 0u), vec4<bool>(false, false, true, true), 9355i, vec2<bool>(true, false)), Struct_1(vec3<u32>(4294967295u, 3575u, 57769u), vec4<bool>(true, true, false, false), -18168i, vec2<bool>(false, true)), Struct_1(vec3<u32>(26787u, 13244u, 4294967295u), vec4<bool>(false, true, false, true), -19366i, vec2<bool>(false, true)), Struct_1(vec3<u32>(14222u, 4294967295u, 30914u), vec4<bool>(false, false, true, false), 0i, vec2<bool>(true, true)), Struct_1(vec3<u32>(64041u, 5487u, 1912u), vec4<bool>(true, true, false, true), i32(-2147483648), vec2<bool>(true, true)), Struct_1(vec3<u32>(0u, 4294967295u, 651u), vec4<bool>(true, true, false, true), 0i, vec2<bool>(true, false)), Struct_1(vec3<u32>(55828u, 1u, 0u), vec4<bool>(false, false, false, false), 97190i, vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 39770u, 31514u), vec4<bool>(true, false, true, true), 52089i, vec2<bool>(true, false)), Struct_1(vec3<u32>(1885u, 1u, 39475u), vec4<bool>(false, true, true, false), 0i, vec2<bool>(true, false)), Struct_1(vec3<u32>(26640u, 4294967295u, 0u), vec4<bool>(false, true, false, false), -10907i, vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 99181u, 47027u), vec4<bool>(false, true, false, false), i32(-2147483648), vec2<bool>(false, false)), Struct_1(vec3<u32>(22347u, 0u, 1u), vec4<bool>(false, true, true, true), -743i, vec2<bool>(false, true)), Struct_1(vec3<u32>(19139u, 0u, 2746u), vec4<bool>(false, false, false, false), 1i, vec2<bool>(true, false)), Struct_1(vec3<u32>(2781u, 0u, 0u), vec4<bool>(false, true, false, false), 2147483647i, vec2<bool>(true, true)), Struct_1(vec3<u32>(1u, 0u, 60606u), vec4<bool>(false, true, true, true), -1i, vec2<bool>(false, false)), Struct_1(vec3<u32>(38572u, 4294967295u, 1u), vec4<bool>(false, true, true, true), 2147483647i, vec2<bool>(true, true)), Struct_1(vec3<u32>(26699u, 1u, 8845u), vec4<bool>(true, false, false, false), 2147483647i, vec2<bool>(true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(22488u, 25u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(abs(58758u), 25u)]))));
    let var_1 = -56753i;
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(min(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(u_input.b, u_input.b, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b) >> (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)), select(vec3<u32>(u_input.b, u_input.b, 30758u), vec3<u32>(1u, u_input.b, u_input.b), vec3<bool>(false, false, var_0))), ~vec3<u32>(u_input.b, 66281u, 41688u) | vec3<u32>(u_input.b, 18917u, 0u)), ~vec3<u32>(u_input.b & 12015u, abs(45492u), 18741u)), select(vec4<bool>(var_0, arg_2.x, arg_2.x, min(arg_0, u_input.c) == 0i), select(!(!vec4<bool>(var_0, true, arg_2.x, true)), select(select(vec4<bool>(arg_2.x, arg_2.x, var_0, arg_2.x), vec4<bool>(true, var_0, false, var_0), arg_2.x), vec4<bool>(var_0, true, true, false), select(vec4<bool>(false, var_0, arg_2.x, var_0), vec4<bool>(false, true, true, false), vec4<bool>(true, false, arg_2.x, arg_2.x))), vec4<bool>(var_0, !var_0, true, !var_0)), any(vec2<bool>(false, false)) && any(vec4<bool>(true, false, true, true))), 2147483647i, arg_2);
    global1 = array<f32, 25>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1431f);
    return abs(vec3<u32>(var_2.a.x, ~u_input.b, _wgslsmith_clamp_u32(~u_input.b, ~35398u, 1u))) | reverseBits(firstLeadingBit(~select(var_2.a, var_2.a, var_2.b.wzx)));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(21225u, 25u)] + -457f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1223f))), 1000f > _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 25u)])), true && any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))));
    global2 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 25u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, -520f))))));
    let var_2 = u_input.b <= u_input.b;
    global2 = array<Struct_1, 25>();
    return Struct_1(_wgslsmith_add_vec3_u32(abs(func_3(-2147483647i, vec4<f32>(global1[_wgslsmith_index_u32(1u, 25u)], -689f, 743f, global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec2<bool>(var_0.x, var_2)) & ~vec3<u32>(67235u, 4294967295u, u_input.b)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)))), !vec4<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), var_0.x, var_0.x), ~(-1i), var_0.xx);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    var var_0 = u_input.d;
    var_0 = _wgslsmith_sub_vec4_i32(firstTrailingBit(-min(vec4<i32>(0i, u_input.a, u_input.a, u_input.d.x), u_input.d)) << (vec4<u32>(arg_0.a.x, 4294967295u, firstLeadingBit(max(arg_1.a.x, arg_1.a.x)), ~22519u) % vec4<u32>(32u)), abs(u_input.d));
    let var_1 = -412f;
    var var_2 = func_2();
    var var_3 = arg_1;
    return vec2<u32>(u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(abs(var_3.a.x), func_2().a.x, var_2.a.x, var_3.a.x << (var_2.a.x % 32u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(60006u, 0u, 70586u, 0u)), vec4<u32>(1u, u_input.b, arg_0.a.x, var_2.a.x) >> (vec4<u32>(var_2.a.x, 38010u, 4294967295u, u_input.b) % vec4<u32>(32u)))) % 32u), arg_1.a.x | 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.d.yy, select(~(vec2<i32>(u_input.e, 2147483647i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b), func_1(Struct_1(vec3<u32>(7946u, 7578u, u_input.b), vec4<bool>(false, false, false, true), 30076i, vec2<bool>(true, false)), global0[_wgslsmith_index_u32(u_input.b, 12u)], false)) % vec2<u32>(32u)), u_input.d.yw, vec2<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)))));
    var_0 = ~u_input.d.zx;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_1 = -u_input.d.xyw;
    var var_2 = _wgslsmith_clamp_vec4_i32(~u_input.d, vec4<i32>(var_0.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -35143i, u_input.a), select(u_input.d.zwy, u_input.d.yzx, vec3<bool>(true, false, false))), i32(-1i) * -2147483647i) & _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c, -2147483647i, -2147483647i, u_input.a)), -u_input.d | -u_input.d), countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 1i, 1i, 1i), vec4<i32>(2147483647i, 26948i, 35130i, u_input.e)) & ~u_input.d, vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.xyw, vec3<i32>(u_input.c, -1i, 24403i)), select(1i, -42139i, true), 1i, ~(-2147483647i)))));
    let var_3 = true;
    let var_4 = abs(u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.b), ~4294967295u, 12401u), ~(vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(4294967295u, u_input.b, 1u) % vec3<u32>(32u)))) % 32u));
    var var_5 = max(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(4294967295u, var_4, 19508u, var_4), vec4<u32>(37244u, 23680u, 1u, var_4)), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4, var_4, var_4, var_4), vec4<u32>(35284u, u_input.b, 1u, u_input.b)), select(vec4<u32>(var_4, var_4, var_4, 91977u), vec4<u32>(u_input.b, var_4, var_4, 4294967295u), vec4<bool>(true, var_3, true, true)))), ~(vec4<u32>(u_input.b, 0u, 24922u, 75778u) ^ firstTrailingBit(vec4<u32>(4294967295u, 7772u, 4294967295u, 27770u)))) | _wgslsmith_mod_vec4_u32(max(select(~vec4<u32>(u_input.b, u_input.b, var_4, 1u), vec4<u32>(var_4, var_4, u_input.b, u_input.b) | vec4<u32>(u_input.b, 7436u, var_4, u_input.b), false), vec4<u32>(_wgslsmith_sub_u32(31696u, var_4), _wgslsmith_clamp_u32(4294967295u, 73415u, 1u), 78943u & var_4, u_input.b)), ~(~(vec4<u32>(u_input.b, 1750u, var_4, 77936u) | vec4<u32>(54120u, 16657u, u_input.b, var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_4, 25u)]);
}

