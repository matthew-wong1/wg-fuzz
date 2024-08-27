struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 68263u, 118538u);

var<private> global1: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(4294967295u, Struct_1(true, vec4<u32>(9258u, 112658u, 87836u, 85639u), 4294967295u, vec4<bool>(true, true, true, true)), Struct_2(Struct_1(false, vec4<u32>(46390u, 1u, 0u, 26950u), 34691u, vec4<bool>(false, false, false, false)), -1531f, Struct_1(true, vec4<u32>(4294967295u, 1u, 1u, 35913u), 4294967295u, vec4<bool>(true, false, false, false)), true), 0i, Struct_1(false, vec4<u32>(17371u, 30006u, 79068u, 41043u), 0u, vec4<bool>(true, false, true, false))), Struct_3(38060u, Struct_1(true, vec4<u32>(21378u, 21646u, 86162u, 50019u), 30645u, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(false, vec4<u32>(26598u, 1u, 4294967295u, 7398u), 4294967295u, vec4<bool>(false, true, true, true)), -1156f, Struct_1(false, vec4<u32>(76039u, 0u, 59630u, 0u), 7080u, vec4<bool>(true, true, false, true)), false), -9569i, Struct_1(false, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 131855u, vec4<bool>(false, false, true, false))), Struct_3(1u, Struct_1(true, vec4<u32>(1u, 4294967295u, 0u, 20103u), 0u, vec4<bool>(false, false, true, false)), Struct_2(Struct_1(true, vec4<u32>(46556u, 32510u, 14453u, 0u), 41985u, vec4<bool>(true, false, false, false)), 367f, Struct_1(false, vec4<u32>(4294967295u, 31861u, 17824u, 51395u), 4294967295u, vec4<bool>(false, true, true, false)), false), -17231i, Struct_1(true, vec4<u32>(18623u, 1u, 1u, 3393u), 1u, vec4<bool>(false, true, false, false))), Struct_3(1u, Struct_1(true, vec4<u32>(4294967295u, 37638u, 0u, 0u), 5003u, vec4<bool>(false, false, true, false)), Struct_2(Struct_1(false, vec4<u32>(0u, 0u, 51339u, 0u), 1u, vec4<bool>(true, true, true, false)), 1275f, Struct_1(true, vec4<u32>(11491u, 0u, 3373u, 25902u), 1u, vec4<bool>(true, false, false, false)), false), 0i, Struct_1(false, vec4<u32>(4294967295u, 100971u, 0u, 8089u), 0u, vec4<bool>(true, true, false, false))), Struct_3(0u, Struct_1(false, vec4<u32>(3882u, 0u, 0u, 1u), 74147u, vec4<bool>(true, false, false, true)), Struct_2(Struct_1(false, vec4<u32>(16258u, 31763u, 8640u, 50912u), 49887u, vec4<bool>(true, false, true, false)), 1275f, Struct_1(true, vec4<u32>(19922u, 36858u, 60486u, 0u), 49461u, vec4<bool>(true, false, true, true)), false), 1i, Struct_1(true, vec4<u32>(1194u, 22070u, 0u, 1u), 1u, vec4<bool>(false, true, true, false))));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(false, vec4<u32>(12755u, 97214u, 1u, 50412u), 140563u, vec4<bool>(false, true, false, false)), -632f, Struct_1(true, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 51290u, vec4<bool>(true, true, true, true)), false), Struct_2(Struct_1(true, vec4<u32>(1u, 86926u, 4294967295u, 1u), 45832u, vec4<bool>(false, true, true, true)), -1505f, Struct_1(false, vec4<u32>(4294967295u, 0u, 27714u, 34525u), 1u, vec4<bool>(false, true, true, false)), false), Struct_2(Struct_1(false, vec4<u32>(52071u, 4294967295u, 66315u, 1u), 25602u, vec4<bool>(true, false, true, false)), 191f, Struct_1(true, vec4<u32>(17841u, 1u, 4294967295u, 4294967295u), 0u, vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 0u, 1u, 74251u), 68737u, vec4<bool>(false, true, true, true)), -501f, Struct_1(false, vec4<u32>(0u, 1u, 1u, 4294967295u), 1u, vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(false, vec4<u32>(1u, 57560u, 1u, 44402u), 68832u, vec4<bool>(false, true, false, false)), 1000f, Struct_1(false, vec4<u32>(4294967295u, 1u, 15775u, 63784u), 24752u, vec4<bool>(true, true, true, false)), true), Struct_2(Struct_1(true, vec4<u32>(1u, 15240u, 0u, 4294967295u), 4294967295u, vec4<bool>(true, false, true, false)), 728f, Struct_1(true, vec4<u32>(127985u, 70818u, 32878u, 14438u), 0u, vec4<bool>(false, true, false, false)), false), Struct_2(Struct_1(false, vec4<u32>(27040u, 4294967295u, 4294967295u, 20435u), 9374u, vec4<bool>(false, true, true, false)), 100f, Struct_1(true, vec4<u32>(12921u, 34605u, 4294967295u, 20685u), 4294967295u, vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(false, vec4<u32>(0u, 6967u, 9090u, 6521u), 4294967295u, vec4<bool>(true, false, true, false)), -107f, Struct_1(true, vec4<u32>(1u, 63832u, 5945u, 1611u), 6080u, vec4<bool>(false, false, false, true)), true), Struct_2(Struct_1(true, vec4<u32>(39409u, 66792u, 65338u, 1u), 118u, vec4<bool>(true, false, true, true)), -388f, Struct_1(false, vec4<u32>(26414u, 1u, 0u, 64954u), 1u, vec4<bool>(false, false, false, true)), false), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 50247u, 32297u, 11085u), 80u, vec4<bool>(true, true, true, true)), -794f, Struct_1(false, vec4<u32>(0u, 1u, 4294967295u, 1u), 1u, vec4<bool>(false, false, true, false)), false), Struct_2(Struct_1(true, vec4<u32>(18627u, 71048u, 16958u, 18551u), 0u, vec4<bool>(true, true, true, true)), -652f, Struct_1(false, vec4<u32>(19133u, 12361u, 4294967295u, 62931u), 0u, vec4<bool>(false, false, true, false)), true), Struct_2(Struct_1(false, vec4<u32>(1u, 24358u, 26139u, 26983u), 1u, vec4<bool>(false, true, false, false)), -1982f, Struct_1(false, vec4<u32>(0u, 1u, 19815u, 5952u), 4294967295u, vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(true, vec4<u32>(46697u, 56905u, 1u, 1u), 16748u, vec4<bool>(false, true, false, true)), 1259f, Struct_1(true, vec4<u32>(57223u, 35565u, 8816u, 1u), 0u, vec4<bool>(true, true, true, false)), false), Struct_2(Struct_1(false, vec4<u32>(29998u, 5486u, 4294967295u, 5043u), 53520u, vec4<bool>(false, false, false, true)), 819f, Struct_1(true, vec4<u32>(34101u, 64956u, 1u, 4294967295u), 4294967295u, vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 25607u, 4294967295u, 67212u), 0u, vec4<bool>(true, false, true, true)), 418f, Struct_1(false, vec4<u32>(16029u, 64879u, 21572u, 29032u), 4294967295u, vec4<bool>(false, true, false, false)), false), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 1483u, 4294967295u, 37444u), 1u, vec4<bool>(true, false, true, false)), 599f, Struct_1(true, vec4<u32>(1u, 7778u, 57985u, 23694u), 76690u, vec4<bool>(true, true, true, false)), false), Struct_2(Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 1u, 9899u), 11033u, vec4<bool>(true, false, false, true)), 388f, Struct_1(false, vec4<u32>(1u, 43646u, 4294967295u, 1u), 4294967295u, vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(true, vec4<u32>(22843u, 0u, 0u, 32861u), 19393u, vec4<bool>(true, true, true, false)), 362f, Struct_1(false, vec4<u32>(30730u, 49840u, 4294967295u, 64063u), 13932u, vec4<bool>(false, false, false, true)), false), Struct_2(Struct_1(true, vec4<u32>(0u, 0u, 0u, 1u), 0u, vec4<bool>(false, false, true, false)), -948f, Struct_1(false, vec4<u32>(1u, 10366u, 30843u, 78289u), 34651u, vec4<bool>(false, true, false, false)), false), Struct_2(Struct_1(false, vec4<u32>(93136u, 27806u, 4294967295u, 4294967295u), 22525u, vec4<bool>(false, true, true, true)), -328f, Struct_1(false, vec4<u32>(39782u, 4294967295u, 28451u, 17555u), 0u, vec4<bool>(true, true, true, true)), true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global2 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -242f);
    let var_1 = global2[_wgslsmith_index_u32(1u, 20u)];
    global0 = vec3<u32>(~(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_1.a.b, var_1.a.b), u_input.d)), countOneBits(_wgslsmith_dot_vec3_u32(var_1.c.b.yyw | ~vec3<u32>(4294967295u, 0u, global0.x), abs(reverseBits(vec3<u32>(32692u, u_input.d, var_1.c.b.x))))), var_1.a.c);
    let var_2 = Struct_2(var_1.c, var_1.b, Struct_1(true && var_1.c.a, vec4<u32>(u_input.d, ~_wgslsmith_dot_vec3_u32(var_1.a.b.xzw, vec3<u32>(global0.x, 0u, 40380u)), 22834u, 1u), 103808u, vec4<bool>(true, !var_1.a.a, any(var_1.a.d.zyx), var_1.a.d.x)), any(vec2<bool>(!(!var_1.c.a), !all(var_1.c.d.yx))));
    return !var_1.c.d.x;
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = firstTrailingBit(u_input.a.x) < ~(~1i >> (global0.x % 32u));
    global2 = array<Struct_2, 20>();
    var_0 = true;
    var var_1 = Struct_3(max(~_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.x, global0.x), 1u), ~_wgslsmith_add_u32(firstLeadingBit(global0.x), global0.x)), Struct_1(all(vec4<bool>(all(vec2<bool>(arg_0, arg_0)), !arg_0, arg_0 || arg_0, !arg_0)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(u_input.d, global0.x, 4294967295u, u_input.d), vec4<u32>(u_input.d, 12530u, u_input.d, 50226u), vec4<bool>(arg_0, false, false, arg_0))), vec4<u32>(1u, max(1u, 0u), reverseBits(u_input.d), ~global0.x)), _wgslsmith_mod_u32(~(~global0.x), ~(~u_input.d)), vec4<bool>(any(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), global0.x != (u_input.d >> (u_input.d % 32u)), -109f < _wgslsmith_f_op_f32(floor(-350f)), arg_0)), Struct_2(Struct_1(arg_0, ~(~vec4<u32>(u_input.d, u_input.d, 27661u, 4294967295u)), u_input.d, select(!vec4<bool>(false, false, false, arg_0), select(vec4<bool>(true, arg_0, true, true), vec4<bool>(true, arg_0, true, true), vec4<bool>(false, true, true, arg_0)), func_3(vec2<f32>(-1559f, -188f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1957f, -948f)))), Struct_1(false, countOneBits(abs(vec4<u32>(28862u, 55073u, global0.x, 4294967295u))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(10325u, u_input.d, global0.x)), ~vec3<u32>(1u, u_input.d, 869u)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0)), vec4<bool>(true, true, true, true))), -2147483647i == u_input.a.x), u_input.c, Struct_1(true, firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.d, 1096u), u_input.d, u_input.d)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 16657u, 33384u) ^ vec4<u32>(global0.x, 78234u, 0u, u_input.d), select(vec4<u32>(u_input.d, u_input.d, global0.x, 1u), vec4<u32>(u_input.d, 4294967295u, global0.x, global0.x), vec4<bool>(arg_0, arg_0, arg_0, false))), ~vec4<u32>(u_input.d, 4294967295u, global0.x, 0u)), select(vec4<bool>(true, true, true, arg_0), !select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_0, arg_0, false)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.b, -137f), vec2<f32>(var_1.c.b, var_1.c.b), var_1.b.d.wz))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b * var_1.c.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.c.b, var_1.c.b))))))));
    return firstLeadingBit(-vec2<i32>(-1i, var_1.d));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = array<Struct_3, 5>();
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(false, !(!(true || arg_3))), arg_3);
    let var_1 = !func_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-303f, 1773f)), _wgslsmith_f_op_f32(1011f + 246f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1507f, -330f)))));
    let var_2 = u_input.a.zzx;
    let var_3 = global1[_wgslsmith_index_u32(~(~abs(~(~u_input.d))), 5u)];
    return Struct_1(true, abs(abs(var_3.e.b)), 46002u, vec4<bool>(false, !arg_3, select(!any(var_3.c.c.d.zyz), !var_3.c.c.d.x, !all(vec4<bool>(true, arg_3, true, var_1))), !var_1));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> u32 {
    var var_0 = func_4(~max(~11610i, -(i32(-1i) * -818i)), 1u, _wgslsmith_dot_vec2_i32(func_2(arg_0.x), ~u_input.b.zx), any(vec3<bool>(all(arg_0.zx), _wgslsmith_div_f32(arg_1.x, -622f) != _wgslsmith_f_op_f32(-arg_1.x), any(arg_0.zy))));
    let var_1 = (reverseBits(vec3<u32>(4294967295u, global0.x, 1u)) >> (vec3<u32>(28001u, _wgslsmith_add_u32(~0u, ~u_input.d), ~_wgslsmith_sub_u32(global0.x, u_input.d)) % vec3<u32>(32u))) ^ ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 19508u, 52753u), vec3<u32>(1u, 1u, 71229u)), max(~0u, _wgslsmith_mod_u32(0u, global0.x)), _wgslsmith_sub_u32(784u, _wgslsmith_mod_u32(0u, 198u)));
    let var_2 = _wgslsmith_div_i32(u_input.b.x, u_input.b.x);
    var var_3 = countOneBits(var_0.b.xxy) & var_1;
    var var_4 = var_2;
    return var_1.x ^ 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(_wgslsmith_mod_u32(~(~u_input.d), ~(~(~global0.x))), abs(83324u), u_input.d);
    global2 = array<Struct_2, 20>();
    global0 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, u_input.d)), vec3<u32>(func_1(vec3<bool>(true, false, true), vec4<f32>(-1380f, -163f, 515f, 788f)), 1u, global0.x), ~vec3<u32>(35012u, 68835u, 4294967295u) ^ vec3<u32>(u_input.d, 0u, 1u)), vec3<u32>(u_input.d, 30197u, _wgslsmith_dot_vec2_u32(global0.zy, select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, global0.x), true))), vec3<u32>(global0.x, min(4786u, ~31411u), ~(~85461u))));
    var var_0 = -126f;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(u_input.c), -2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f + _wgslsmith_f_op_f32(455f + -819f))), -368f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, -150f, -395f, 740f)), vec4<f32>(-1810f, 467f, 290f, -1478f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(388f, -117f, -494f, 280f), vec4<f32>(705f, 1000f, 1000f, -839f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1768f, 924f, 1000f, -599f) + vec4<f32>(277f, 536f, 557f, -357f))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-894f, -1843f, true))), _wgslsmith_f_op_f32(sign(1328f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) + _wgslsmith_f_op_f32(trunc(-151f)))))), 1f);
}

