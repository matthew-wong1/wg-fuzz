struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec4<i32> = vec4<i32>(-47794i, 2147483647i, -1i, 0i);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(26900u, 35811u, 47733u, 1u)), true), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(3711u, 91522u, 46839u, 13220u)), true), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 25365u, 61896u, 51252u)), true), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 9866u, 1u, 71300u)), true), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(1u, 8635u, 4294967295u, 69722u)), true), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(4294967295u, 15235u, 4294967295u, 0u)), false), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(40088u, 16719u, 32716u, 82293u)), false), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(0u, 24039u, 4294967295u, 1u)), true), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(7011u, 1u, 27680u, 91792u)), true), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(58354u, 4294967295u, 102708u, 10248u)), true), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(4294967295u, 0u, 4415u, 1u)), true), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(29231u, 69380u, 4294967295u, 41460u)), false), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(29961u, 35337u, 89923u, 4294967295u)), true), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 52619u)), true), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 1u, 0u, 33919u)), true), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(37297u, 41795u, 4294967295u, 1u)), false), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(33082u, 1u, 1u, 43752u)), false), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 1u, 30253u, 42170u)), false), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), false), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(1u, 3589u, 4294967295u, 0u)), true), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(1u, 0u, 3459u, 0u)), true), Struct_2(vec2<bool>(false, true), Struct_1(vec4<u32>(53781u, 0u, 6489u, 1u)), true), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), false), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 61717u, 0u, 91762u)), false), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(32533u, 1u, 4294967295u, 4294967295u)), true), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(16871u, 1u, 4294967295u, 1u)), false), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 41618u, 0u, 94837u)), true), Struct_2(vec2<bool>(true, true), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 31875u)), false), Struct_2(vec2<bool>(true, false), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u)), false), Struct_2(vec2<bool>(false, false), Struct_1(vec4<u32>(41250u, 4294967295u, 87446u, 4294967295u)), false));

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global2 = array<Struct_2, 30>();
    let var_0 = vec2<i32>(countOneBits(-2147483647i), ~(~u_input.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-100f)), -542f, any(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-216f)) + _wgslsmith_f_op_f32(f32(-1f) * -631f)) + -302f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(837f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1554f, 607f) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -375f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-458f, 917f) * _wgslsmith_f_op_f32(sign(1881f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, -848f, 385f, -699f)) * vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_2 = (abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 52431u, 1u, 1u), vec4<u32>(3304u, 4294967295u, 1u, 4294967295u))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)), 1u, 1u, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(1u, 1u, 1u, 1u);
    var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(var_2.x, var_2.x, var_2.x, 72233u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, 2874u, 4294967295u), vec4<u32>(86949u, 28517u, 4294967295u, var_2.x))), vec4<u32>(~1u, _wgslsmith_mult_u32(var_2.x, var_2.x) >> (7542u % 32u), 132838u, 46754u), vec4<u32>(var_2.x, 15844u, _wgslsmith_mod_u32(select(var_2.x, 40283u, false), ~1u), var_2.x));
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = reverseBits(2147483647i);
    global0 = firstLeadingBit(vec4<i32>(func_3(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, -33817i), -vec2<i32>(1i, var_0)), vec4<bool>(true, true, true, true), ~(39737i ^ u_input.a)), ~(i32(-1i) * -u_input.a), global0.x, _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, 1i), ~31943i, var_0))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.x, countOneBits(abs(4294967295u))), _wgslsmith_clamp_u32(arg_1.x, ~_wgslsmith_sub_u32(1u, arg_1.x), _wgslsmith_mult_u32(max(arg_1.x, 0u), arg_1.x))) ^ 40453u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), 824f), select(vec2<bool>(false, global1.x), vec2<bool>(arg_0.x, false), global1.x))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(619f, 664f), vec2<f32>(654f, -1460f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, -807f)))))));
    let var_3 = true;
    return Struct_1(vec4<u32>(arg_1.x, countOneBits(~max(1u, arg_1.x)), ~(~firstTrailingBit(arg_1.x)), 31051u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a.x, 4294967295u), 30u)];
    var var_1 = _wgslsmith_f_op_f32(-582f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(423f)), -1368f, true))));
    var var_2 = global2[_wgslsmith_index_u32(~(~(~arg_1.a.x)), 30u)];
    var var_3 = Struct_3(!vec3<bool>(-u_input.a <= global0.x, var_0.c, true), select(vec2<bool>(all(vec3<bool>(global3.x, global3.x, false)), !(-2147483647i > u_input.a)), global1.wz, true), 34315u, global2[_wgslsmith_index_u32(44991u, 30u)], vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-488f * 1515f))), -254f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(558f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -767f))), !var_0.a.x))));
    let var_4 = var_3.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.x + -264f) * 1000f) >= _wgslsmith_f_op_f32(1239f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-430f)), _wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(-var_3.e.x)))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global1 = !vec4<bool>(global1.x, true, true, func_4(func_2(select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), global3.x), _wgslsmith_mod_vec2_u32(arg_0.zx, arg_0.yy)), func_2(global1.yw, countOneBits(arg_0.yy))));
    return _wgslsmith_add_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(~arg_0.x, 69325u), ~(~arg_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(33238u, select(~arg_0.x, 750u, false), 5958u, _wgslsmith_add_u32(4294967295u, arg_0.x ^ 1u)), ~(~vec4<u32>(arg_0.x, arg_0.x, 19280u, 61912u) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 0u, arg_0.x), vec4<u32>(46759u, arg_0.x, arg_0.x, 11698u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = -_wgslsmith_mod_vec4_i32(~(countOneBits(vec4<i32>(1i, global0.x, -1i, 35360i)) | vec4<i32>(u_input.a, global0.x, -1i, 1i)), vec4<i32>(31200i, -18047i, -552i, u_input.a));
    var var_2 = ~vec4<u32>(_wgslsmith_add_u32(1u, 50562u), func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(66279u, 10784u, 1u), vec3<u32>(9714u, 16828u, 72209u))), 1u, 3544u) >> (~vec4<u32>(func_1(~vec3<u32>(125900u, 0u, 1u)), ~abs(7569u), 60136u, ~62113u & _wgslsmith_dot_vec4_u32(vec4<u32>(12632u, 1836u, 1u, 18118u), vec4<u32>(1u, 15032u, 95151u, 1u))) % vec4<u32>(32u));
    global1 = vec4<bool>(global1.x, global3.x, false, global1.x && false);
    let var_3 = 115697u;
    global2 = array<Struct_2, 30>();
    global2 = array<Struct_2, 30>();
    global3 = !select(select(!vec2<bool>(global3.x, false), global1.xz, select(global1.wy, select(global1.xw, vec2<bool>(true, false), vec2<bool>(false, global3.x)), true)), !global1.xw, all(vec4<bool>(global3.x, global3.x, true, func_4(Struct_1(vec4<u32>(1885u, 40318u, var_3, 4294967295u)), Struct_1(vec4<u32>(var_3, 29317u, 57710u, var_2.x))))));
    var_2 = abs(vec4<u32>(0u, ~1u << (reverseBits(var_2.x) % 32u), 46381u, ~(~18559u))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(min(4294967295u, 0u), countOneBits(var_2.x), var_3, min(4294967295u, var_2.x)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(50101u, var_3, 84913u, 40101u), vec4<u32>(0u, var_2.x, var_3, 43604u) ^ vec4<u32>(28888u, 73597u, var_2.x, var_3), _wgslsmith_clamp_vec4_u32(vec4<u32>(3621u, var_3, var_3, 154883u), vec4<u32>(21847u, 4294967295u, 8697u, 20402u), vec4<u32>(var_2.x, 46651u, 0u, var_3))))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-607f);
}

