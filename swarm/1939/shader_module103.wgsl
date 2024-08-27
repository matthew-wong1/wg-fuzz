struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: vec4<f32> = vec4<f32>(-217f, -392f, 1701f, 441f);

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<i32>(2119i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(-10315i, -998i, -32204i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -49316i, 1i, 1906i)), Struct_1(vec4<i32>(1i, 8638i, -8507i, -40i)), Struct_1(vec4<i32>(30412i, -39737i, -31837i, 2147483647i)), Struct_1(vec4<i32>(-11330i, 35673i, -13805i, 2147483647i)), Struct_1(vec4<i32>(7343i, 29804i, 18016i, 0i)), Struct_1(vec4<i32>(57587i, -39112i, -42535i, 1i)), Struct_1(vec4<i32>(0i, -4799i, 8601i, -1i)), Struct_1(vec4<i32>(-10063i, -11180i, 0i, 48357i)), Struct_1(vec4<i32>(-44553i, 34854i, 1573i, -5956i)), Struct_1(vec4<i32>(-1267i, 3529i, 1i, -1i)), Struct_1(vec4<i32>(1i, 35650i, 7405i, 56902i)), Struct_1(vec4<i32>(0i, -9159i, 26805i, 1i)), Struct_1(vec4<i32>(31376i, 22459i, -1i, -1i)), Struct_1(vec4<i32>(19380i, i32(-2147483648), -2242i, -54338i)), Struct_1(vec4<i32>(1987i, 2147483647i, -1i, -1i)), Struct_1(vec4<i32>(-1i, 7629i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -84599i)), Struct_1(vec4<i32>(-1i, 2147483647i, -4270i, -1i)), Struct_1(vec4<i32>(2147483647i, -43942i, 1i, -19100i)), Struct_1(vec4<i32>(-1i, 15897i, 2147483647i, 0i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, 52015i)), Struct_1(vec4<i32>(17602i, 1917i, -1i, 14255i)), Struct_1(vec4<i32>(i32(-2147483648), -798i, -1i, 0i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(global1.x)), 583f, global1.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 285f, -1191f, global1.x), vec4<f32>(-1000f, 1194f, -173f, -1000f), !vec4<bool>(true, var_0.d.c, false, true))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.x, global1.x, global1.x), vec4<f32>(-1578f, 1480f, 395f, global1.x)))))));
    let var_2 = arg_0;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(abs(~0u & var_0.a), firstLeadingBit(var_0.a | min(arg_0.a, var_0.a))), ~4294967295u), 26u)];
    global0 = !vec4<bool>(any(vec2<bool>(all(vec2<bool>(var_2.d.b, false)), any(vec4<bool>(false, arg_0.d.c, false, global0.x)))), any(arg_0.b.zz), false || !(var_2.a != 18437u), arg_0.d.d);
    return !vec4<bool>(any(vec3<bool>(global1.x <= -555f, arg_0.b.x, arg_0.a != 4294967295u)), any(vec2<bool>(arg_0.d.a.a.x == 4367i, !global0.x)), !var_2.d.b, (~4294967295u >> ((arg_0.a & 68403u) % 32u)) >= _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(4294967295u, 16857u), vec2<u32>(var_0.a, arg_1.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec3<bool> {
    global0 = !(!func_3(Struct_3(1u, select(global0.wyw, global0.xxw, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(-25989i, -23298i, -1i), vec3<i32>(-2147483647i, -1i, 11340i)), Struct_2(Struct_1(vec4<i32>(-1i, -31706i, -1227i, 1i)), true, true, global0.x, true), -vec4<i32>(-2147483647i, 2147483647i, 38967i, 51489i)), vec2<u32>(57373u, arg_1)));
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(global1.zx));
    var var_1 = vec2<bool>(!func_3(Struct_3(_wgslsmith_mult_u32(33101u, arg_1), global0.ywy, -vec3<i32>(-12367i, 47477i, 0i), Struct_2(global2[_wgslsmith_index_u32(arg_1, 26u)], false, global0.x, global0.x, global0.x), vec4<i32>(-2147483647i, 1i, 9591i, 47419i)), (vec2<u32>(43211u, u_input.a) << (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))) >> (vec2<u32>(arg_1, u_input.a) % vec2<u32>(32u))).x, any(select(select(vec4<bool>(true, global0.x, global0.x, global0.x), func_3(Struct_3(u_input.c, vec3<bool>(global0.x, global0.x, false), vec3<i32>(-27803i, -35000i, -23056i), Struct_2(Struct_1(vec4<i32>(-11368i, 9728i, 1i, 10750i)), global0.x, false, true, false), vec4<i32>(41015i, 1i, 0i, 14959i)), vec2<u32>(arg_1, u_input.b)), func_3(Struct_3(1u, global0.zyy, vec3<i32>(9110i, 6402i, -12303i), Struct_2(global2[_wgslsmith_index_u32(arg_1, 26u)], true, true, global0.x, false), vec4<i32>(19803i, 14690i, 58364i, -1i)), vec2<u32>(4294967295u, 4294967295u)).x), func_3(Struct_3(u_input.c, vec3<bool>(false, false, global0.x), vec3<i32>(1i, -17779i, 1i), Struct_2(global2[_wgslsmith_index_u32(61257u, 26u)], false, global0.x, true, global0.x), vec4<i32>(-15405i, -7166i, -10352i, -2147483647i)), _wgslsmith_clamp_vec2_u32(vec2<u32>(57219u, arg_1), vec2<u32>(u_input.b, 0u), vec2<u32>(51486u, 0u))), true)));
    var_1 = vec2<bool>(any(vec2<bool>(!func_3(Struct_3(u_input.c, vec3<bool>(var_1.x, false, true), vec3<i32>(1i, 0i, 0i), Struct_2(global2[_wgslsmith_index_u32(85794u, 26u)], false, true, var_1.x, false), vec4<i32>(8051i, -1i, 0i, -3293i)), vec2<u32>(u_input.b, arg_1)).x, select(true, global0.x, all(vec3<bool>(global0.x, var_1.x, var_1.x))))), all(!func_3(Struct_3(u_input.a, global0.wzz, vec3<i32>(57127i, -2147483647i, 1i), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 26u)], true, false, var_1.x, false), vec4<i32>(2147483647i, -6381i, 11707i, -1i)), vec2<u32>(arg_1, 48262u) & vec2<u32>(arg_1, 83712u))));
    global2 = array<Struct_1, 26>();
    return vec3<bool>(true, true, true);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = reverseBits(~(~33160u));
    global0 = !vec4<bool>(!global0.x, true, any(!vec4<bool>(false, false, global0.x, false)), all(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1484f, global1.x)), 4294967295u)));
    var_0 = ~u_input.a & ~_wgslsmith_div_u32(~40153u, u_input.a);
    var var_1 = Struct_4(reverseBits(max(-vec2<i32>(1i, -2147483647i), ~(-vec2<i32>(-1i, -2147483647i)))));
    var var_2 = var_1.a.x;
    return Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(u_input.c, 0u), ~1u), 26u)], true, arg_0, global0.x, any(vec3<bool>(select(global0.x, func_3(Struct_3(1u, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), Struct_2(Struct_1(vec4<i32>(var_1.a.x, -1i, 28551i, var_1.a.x)), global0.x, arg_0, true, true), vec4<i32>(15807i, 1i, var_1.a.x, var_1.a.x)), vec2<u32>(13703u, u_input.a)).x, true), any(vec2<bool>(false, global0.x)), any(vec4<bool>(true, arg_0, false, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = true;
    var var_1 = !vec3<bool>(true, true, global0.x && true);
    let var_2 = ~u_input.c << (_wgslsmith_div_u32(~59481u, reverseBits(4887u) >> (abs(u_input.a >> (50528u % 32u)) % 32u)) % 32u);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -815f), global1.x, -393f, 427f);
    var_1 = func_3(Struct_3(u_input.c, global0.yxx, _wgslsmith_div_vec3_i32(~(-vec3<i32>(arg_1.a.a.x, arg_0.a.x, -1i)), vec3<i32>(arg_1.a.a.x, 1i, -15860i) >> (select(vec3<u32>(var_2, 0u, 1u), vec3<u32>(var_2, var_2, u_input.b), vec3<bool>(arg_1.c, arg_1.e, false)) % vec3<u32>(32u))), Struct_2(arg_1.a, all(func_3(Struct_3(1u, vec3<bool>(false, true, false), arg_0.a.zyy, arg_1, arg_0.a), vec2<u32>(19634u, 4294967295u)).zyz), 4294967295u >= abs(u_input.b), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 198f) * global1.zww), ~4294967295u).x, !(!var_1.x)), arg_0.a), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, u_input.a)), select(vec2<u32>(_wgslsmith_sub_u32(30403u, 25391u), u_input.b), ~vec2<u32>(u_input.b, 0u), -1i == -arg_0.a.x))).xww;
    return u_input.c;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = func_1(arg_0.x);
    global2 = array<Struct_1, 26>();
    global0 = vec4<bool>(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(719f * -105f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-687f)), _wgslsmith_f_op_f32(f32(-1f) * -851f))), select(any(vec4<bool>(all(vec3<bool>(arg_0.x, false, global0.x)), global0.x, all(vec2<bool>(false, false)), any(vec3<bool>(arg_0.x, arg_0.x, false)))), var_0.c, any(global0.xxz)), true, select(any(select(global0.zyx, !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(false, false, var_0.e))), u_input.b > func_4(Struct_1(vec4<i32>(arg_1.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), func_1(arg_0.x)), true));
    global0 = vec4<bool>(arg_0.x, false, true, any(arg_0.zz));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.zwy, global1.yyw)) * global1.zzx);
    return Struct_3(_wgslsmith_sub_u32(u_input.c, ~1u), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.b, true), global0.x)), vec3<bool>(!arg_0.x, func_1(global0.x).a.a.x >= reverseBits(66727i), true), select(vec3<bool>(arg_0.x != var_0.b, func_1(true).d, all(global0.wyx)), !vec3<bool>(true, arg_0.x, true), !(!global0.wxx))), _wgslsmith_mult_vec3_i32(-vec3<i32>(_wgslsmith_clamp_i32(-5263i, -2147483647i, arg_1.a.x), -544i, -5869i), abs(_wgslsmith_clamp_vec3_i32(arg_1.a.wzw >> (vec3<u32>(u_input.b, u_input.c, 0u) % vec3<u32>(32u)), vec3<i32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), abs(var_0.a.a.zzx)))), Struct_2(func_1(select(false, true, arg_0.x || false)).a, true, -(var_0.a.a.x >> (u_input.b % 32u)) == (~arg_1.a.x ^ var_0.a.a.x), select(!(true && var_0.c), arg_0.x, var_0.d), !func_1(true).c), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.x, arg_1.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a)));
}

fn func_6(arg_0: Struct_3) -> i32 {
    return min(arg_0.c.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 26>();
    let var_0 = _wgslsmith_mult_i32(func_6(func_5(select(!vec4<bool>(true, global0.x, true, true), !vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(true, global0.x, global0.x, true)), global2[_wgslsmith_index_u32(func_4(Struct_1(vec4<i32>(2147483647i, 70694i, -2826i, 1i)), func_1(false)), 26u)])), countOneBits(-1i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1342f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(global1.x))) + global1.x))), -1270f);
    global1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1536f, 909f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(592f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-492f + var_1.x), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(step(var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, global1.x, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -1833f)))))), vec3<i32>(0i, func_1(global0.x).a.a.x << (func_5(!vec4<bool>(true, global0.x, false, global0.x), global2[_wgslsmith_index_u32(abs(u_input.c), 26u)]).a % 32u), ~countOneBits(-var_0)), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1243f * 650f), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(select(768f, -900f, false)), global1.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2489f)), _wgslsmith_f_op_f32(global1.x + 1f), _wgslsmith_f_op_f32(-1204f - -318f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))));
}

