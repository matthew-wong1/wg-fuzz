struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<f32>(1332f, -735f, 596f), vec2<u32>(0u, 61654u), 111346u, 72049u, vec2<u32>(76320u, 4294967295u)), Struct_1(vec3<f32>(403f, 229f, -1618f), vec2<u32>(2834u, 4294967295u), 1u, 39255u, vec2<u32>(4294967295u, 38085u)), Struct_1(vec3<f32>(239f, 1247f, 484f), vec2<u32>(23883u, 1u), 28570u, 0u, vec2<u32>(16757u, 51930u)), Struct_1(vec3<f32>(1000f, -1348f, -762f), vec2<u32>(1u, 30203u), 14139u, 0u, vec2<u32>(14429u, 4294967295u)), Struct_1(vec3<f32>(-679f, 1024f, -3360f), vec2<u32>(4294967295u, 42830u), 4294967295u, 0u, vec2<u32>(0u, 4294967295u)), Struct_1(vec3<f32>(1000f, 455f, -968f), vec2<u32>(0u, 1u), 21250u, 0u, vec2<u32>(4294967295u, 14965u)), Struct_1(vec3<f32>(1547f, 818f, 546f), vec2<u32>(14521u, 4294967295u), 1u, 0u, vec2<u32>(1u, 70044u)), Struct_1(vec3<f32>(-2621f, -145f, -522f), vec2<u32>(31596u, 23757u), 0u, 0u, vec2<u32>(8395u, 1u)), Struct_1(vec3<f32>(1000f, -1852f, -1396f), vec2<u32>(4294967295u, 4294967295u), 116750u, 0u, vec2<u32>(54015u, 30584u)), Struct_1(vec3<f32>(-1758f, -1000f, -1000f), vec2<u32>(1u, 29289u), 0u, 100750u, vec2<u32>(1u, 4294967295u)), Struct_1(vec3<f32>(-134f, 795f, -627f), vec2<u32>(632u, 37312u), 4294967295u, 1u, vec2<u32>(49383u, 37420u)), Struct_1(vec3<f32>(794f, -165f, -773f), vec2<u32>(1u, 3300u), 38888u, 80257u, vec2<u32>(0u, 31794u)), Struct_1(vec3<f32>(-1503f, 1118f, 709f), vec2<u32>(21737u, 0u), 31901u, 1u, vec2<u32>(4294967295u, 1u)), Struct_1(vec3<f32>(1000f, 884f, 1000f), vec2<u32>(15339u, 1u), 29361u, 17169u, vec2<u32>(49920u, 4843u)), Struct_1(vec3<f32>(-192f, 1109f, -361f), vec2<u32>(0u, 4294967295u), 16248u, 44639u, vec2<u32>(61863u, 1u)), Struct_1(vec3<f32>(1077f, 143f, -1000f), vec2<u32>(1u, 0u), 48190u, 8882u, vec2<u32>(21390u, 30472u)), Struct_1(vec3<f32>(558f, 190f, 953f), vec2<u32>(1u, 4294967295u), 4294967295u, 31030u, vec2<u32>(1u, 8472u)), Struct_1(vec3<f32>(-767f, 965f, -779f), vec2<u32>(1u, 33302u), 27879u, 0u, vec2<u32>(1u, 4294967295u)), Struct_1(vec3<f32>(1069f, -860f, 1128f), vec2<u32>(76676u, 40473u), 1u, 4294967295u, vec2<u32>(17469u, 12621u)), Struct_1(vec3<f32>(-467f, 738f, -1332f), vec2<u32>(28532u, 12587u), 33211u, 22631u, vec2<u32>(9483u, 5163u)), Struct_1(vec3<f32>(-1000f, -1215f, -1681f), vec2<u32>(122470u, 1u), 1u, 1u, vec2<u32>(87924u, 38960u)), Struct_1(vec3<f32>(-213f, 1000f, 1716f), vec2<u32>(4763u, 4294967295u), 25034u, 0u, vec2<u32>(17730u, 31479u)), Struct_1(vec3<f32>(202f, 2184f, -261f), vec2<u32>(59436u, 1817u), 5841u, 42537u, vec2<u32>(0u, 4294967295u)), Struct_1(vec3<f32>(-154f, 1000f, 594f), vec2<u32>(1u, 4294967295u), 66455u, 1u, vec2<u32>(0u, 31604u)), Struct_1(vec3<f32>(1000f, 144f, -1400f), vec2<u32>(0u, 95113u), 0u, 1u, vec2<u32>(37725u, 2926u)), Struct_1(vec3<f32>(186f, 446f, -558f), vec2<u32>(40620u, 66386u), 1u, 65180u, vec2<u32>(53807u, 4294967295u)), Struct_1(vec3<f32>(1660f, 616f, 1000f), vec2<u32>(26984u, 39827u), 12526u, 4294967295u, vec2<u32>(277u, 0u)), Struct_1(vec3<f32>(-1101f, -533f, 682f), vec2<u32>(9156u, 15956u), 61565u, 22316u, vec2<u32>(1u, 33742u)));

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    global0 = _wgslsmith_mult_vec4_i32(max(-u_input.b, vec4<i32>(_wgslsmith_mult_i32(u_input.c, -28744i), global0.x, 14993i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, -24938i, 50377i, global0.x)))) >> (select(~abs(vec4<u32>(global3.x, global3.x, 4294967295u, global1.x)), vec4<u32>(~arg_0.e.x, _wgslsmith_add_u32(global1.x, arg_0.e.x), 1u, 28812u), all(vec4<bool>(true, true, true, true))) % vec4<u32>(32u)), u_input.b);
    global0 = -vec4<i32>(u_input.a, -12656i, 1i, _wgslsmith_div_i32(~(~58627i), u_input.c));
    var var_0 = ~24520u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(trunc(arg_0.a.x)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1373f, _wgslsmith_f_op_f32(-arg_0.a.x)))));
    var var_2 = _wgslsmith_mod_u32(global1.x, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1.x) >> (global3.yz % vec2<u32>(32u)), global3.xz), vec2<u32>(4294967295u, min(global3.x, 7196u))), global3.x & _wgslsmith_dot_vec4_u32(select(vec4<u32>(8739u, 1u, 7509u, arg_0.c), vec4<u32>(global1.x, 0u, 4294967295u, 11090u), true), vec4<u32>(18306u, 0u, 0u, 0u))));
    return vec2<u32>(~firstLeadingBit(~24601u), _wgslsmith_sub_u32(global1.x, 4294967295u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    var var_0 = func_3(global2[_wgslsmith_index_u32(~0u, 28u)], all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
    let var_1 = -1120f;
    global2 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 869f) * _wgslsmith_f_op_f32(arg_0.x + arg_2)))), _wgslsmith_f_op_f32(round(1629f)), -530f, _wgslsmith_f_op_f32(sign(var_1))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -402f))), -468f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) + 1819f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1038f * arg_2), var_1, true)), var_1)) * _wgslsmith_f_op_vec4_f32(-arg_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * arg_0.x));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(~arg_0.d, 28u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(var_0.a.x, var_0.a.x, arg_0.a.x, var_0.a.x), vec4<u32>(var_0.d, global1.x, global1.x, global1.x), 1021f, vec4<u32>(44878u, var_0.c, 4294967295u, 4294967295u))), _wgslsmith_f_op_f32(-362f - -221f), _wgslsmith_f_op_f32(sign(-150f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, arg_0.a.x, -509f) + vec4<f32>(733f, -117f, 1710f, arg_0.a.x)), vec4<u32>(0u, 1u, 62310u, global3.x), arg_0.a.x, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_0.d, global3.x, global1.x), vec4<u32>(global1.x, 26441u, arg_0.e.x, 21647u)))), 2452f), true)), ~select(vec2<u32>(arg_0.e.x, 51206u), ~(~vec2<u32>(4294967295u, 10122u)), global0.x <= ~u_input.c), global1.x, arg_0.d, (~(~vec2<u32>(var_0.b.x, arg_0.e.x)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(61916u, global1.x), vec2<u32>(global1.x, 5118u), vec2<u32>(global3.x, var_0.c)) % vec2<u32>(32u))) ^ select(var_0.b, _wgslsmith_sub_vec2_u32(firstTrailingBit(global3.xx), ~global1.zx), true));
    global1 = vec3<u32>(_wgslsmith_mult_u32(~select(4294967295u, global1.x, false), ~_wgslsmith_div_u32(arg_0.b.x, var_1.e.x)), 0u, func_3(arg_0, true).x) | vec3<u32>(var_1.d, abs(1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(52138u, 36904u) << (_wgslsmith_mult_u32(var_1.e.x, global3.x) % 32u), 0u << (1u % 32u)));
    global3 = ~(~vec3<u32>(firstLeadingBit(var_0.e.x), _wgslsmith_dot_vec2_u32(global3.xy & var_0.e, firstLeadingBit(global3.zx)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 45145u), var_1.e) >> (~global1.x % 32u)));
    var var_2 = Struct_1(var_0.a, arg_0.b, abs(0u), ~1u, select(~vec2<u32>(firstTrailingBit(1u), global1.x), global1.zx, false));
    return vec4<u32>(arg_0.e.x, ~arg_0.e.x, _wgslsmith_dot_vec3_u32(reverseBits(min(abs(vec3<u32>(arg_0.e.x, global1.x, var_1.c)), select(vec3<u32>(var_2.d, 1821u, 0u), vec3<u32>(0u, var_1.b.x, global3.x), true))), vec3<u32>(14535u, 1u, _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_div_u32(1u, var_1.e.x)))), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0.x;
    global0 = _wgslsmith_div_vec4_i32(-firstLeadingBit(u_input.b), -(u_input.b ^ (u_input.b << (vec4<u32>(global3.x, 1u, 84767u, global3.x) % vec4<u32>(32u))))) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(1u | global1.x, _wgslsmith_clamp_u32(global1.x, 4294967295u, global1.x), min(4294967295u, global1.x), global3.x), func_1(Struct_1(vec3<f32>(1081f, 387f, 1992f), global3.yy, 27u, global3.x, global3.xz))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, global1.x, 36866u, 0u), vec4<u32>(30026u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(23912u, 105359u, global3.x), vec3<u32>(22683u, 0u, 4294967295u)), 4294967295u, global1.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = vec4<i32>(-_wgslsmith_sub_i32(u_input.b.x, firstTrailingBit(var_0)), -2147483647i, -1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(1852i, global0.x) & ~7034i, firstLeadingBit(_wgslsmith_mult_i32(-60303i, global0.x))), -12051i));
    global3 = ~(~vec3<u32>(4294967295u, global3.x, _wgslsmith_div_u32(23590u << (global3.x % 32u), 1u)));
    var var_1 = global2[_wgslsmith_index_u32(select(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~global3.x, global1.x, ~1u), ~(~vec3<u32>(global3.x, global1.x, 55047u))), vec3<u32>(global1.x, ~(~global3.x), global3.x)), true | any(vec2<bool>(true, true))), 28u)];
    var var_2 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(global3.x, global3.x, ~0u << (_wgslsmith_mod_u32(global1.x, global1.x) % 32u), var_1.c), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 72774u, global3.x, 30874u), ~vec4<u32>(4294967295u, global3.x, 40074u, global3.x))), u_input.b.x == 44889i), ~41305u, ~firstTrailingBit(vec4<u32>(global1.x, ~40202u, 10145u, 0u)));
}

