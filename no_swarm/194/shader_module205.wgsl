struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(1u, 70671u, 2193u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 5566u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(48855u, 44100u, 0u, 0u), vec4<u32>(25157u, 70688u, 4294967295u, 1u), vec4<u32>(55116u, 4294967295u, 28647u, 30385u), vec4<u32>(2459u, 82737u, 4294967295u, 12294u), vec4<u32>(0u, 47654u, 0u, 40139u), vec4<u32>(4294967295u, 1u, 10880u, 43825u), vec4<u32>(0u, 27004u, 1u, 46441u), vec4<u32>(48236u, 102561u, 147215u, 0u), vec4<u32>(1u, 47445u, 33298u, 4294967295u), vec4<u32>(12411u, 81289u, 5313u, 29840u), vec4<u32>(35405u, 2368u, 0u, 3660u), vec4<u32>(4294967295u, 16207u, 0u, 10754u), vec4<u32>(1u, 1u, 75205u, 16489u), vec4<u32>(1u, 67002u, 1u, 64134u), vec4<u32>(0u, 0u, 1u, 31874u));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<u32, 32> = array<u32, 32>(4294967295u, 70641u, 67950u, 14857u, 78089u, 85101u, 1u, 13618u, 42663u, 8214u, 35381u, 64593u, 35954u, 37518u, 0u, 32198u, 1u, 18075u, 1u, 19922u, 5413u, 20295u, 4294967295u, 29583u, 43672u, 37274u, 53763u, 4294967295u, 1u, 42059u, 4294967295u, 1u);

var<private> global3: array<f32, 8>;

var<private> global4: array<vec2<i32>, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_2(-1i);
    let var_1 = Struct_1(arg_0.c.x, _wgslsmith_div_u32(arg_0.b, ~firstLeadingBit(1u)), !vec4<bool>(any(select(vec4<bool>(arg_0.c.x, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.c.x, true, true), arg_0.c)), !all(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x)), any(select(arg_0.c, vec4<bool>(true, arg_0.a, arg_0.c.x, false), arg_0.c.x)), !arg_0.c.x), select(~vec2<i32>(~(-25837i), ~u_input.c.x), vec2<i32>(~arg_0.d.x, abs(0i)), select(arg_0.c.yw, arg_0.c.wz, vec2<bool>(true, true))));
    global4 = array<vec2<i32>, 21>();
    let var_2 = ~_wgslsmith_clamp_u32(arg_0.b, reverseBits(_wgslsmith_mult_u32(40477u, 1u)) << (0u % 32u), 45174u);
    let var_3 = var_1;
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~8108u, 8u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~arg_0, 8u)])));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(687f * -1267f) + global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~u_input.b, 32u)], 8u)]))));
    global2 = array<u32, 32>();
    var var_2 = vec3<bool>(!(~u_input.c.x < _wgslsmith_clamp_i32(~18957i, -41146i, firstLeadingBit(25756i))), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)), true & func_3(global1[_wgslsmith_index_u32(1u, 27u)], ~global0[_wgslsmith_index_u32(~4294967295u, 18u)]));
    var var_3 = arg_1;
    return any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)] == _wgslsmith_add_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_2.x, 32u)], global2[_wgslsmith_index_u32(47504u, 32u)]), countOneBits(arg_0)), (4294967295u > _wgslsmith_sub_u32(64777u, arg_2.x)) && false, !(var_2.x && all(var_2.yz))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(all(vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)) && true, true)), 19379u, select(select(vec4<bool>(func_2(13339u, Struct_2(u_input.c.x), vec2<u32>(4294967295u, u_input.a)), func_2(global2[_wgslsmith_index_u32(u_input.a, 32u)], Struct_2(u_input.c.x), vec2<u32>(0u, u_input.a)), true, select(true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), vec4<bool>(false, true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)))), !(select(false, true, false) & true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec2_i32(global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 32u)], 32u)], 21u)], ~global4[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, -u_input.c.x), vec2<i32>(-2147483647i, _wgslsmith_add_i32(2147483647i, u_input.c.x))), _wgslsmith_mult_vec2_i32(~vec2<i32>(-15842i, u_input.c.x), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.a, 32u)]), 32u)], global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 32u)]), 21u)])));
    global1 = array<Struct_1, 27>();
    let var_1 = ~_wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(0u, u_input.b, var_0.b) | vec3<u32>(4372u, 1u, 4294967295u)), firstTrailingBit(~max(vec3<u32>(var_0.b, u_input.a, 1u), vec3<u32>(16739u, global2[_wgslsmith_index_u32(37834u, 32u)], 74255u))));
    var var_2 = all(!select(vec2<bool>(true, u_input.a != 1u), select(select(vec2<bool>(true, var_0.c.x), vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, var_0.a)), var_0.c.yz, !var_0.c.x), !(!var_0.c.xx)));
    var var_3 = Struct_2(1i);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], u_input.a), max(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 32u)], 23748u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)])), true), ~vec3<u32>(4294967295u, 0u, 57763u) >> ((vec3<u32>(u_input.b, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 32u)]) >> (vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 32u)]) % vec3<u32>(32u))) % vec3<u32>(32u))), 4294967295u) <= _wgslsmith_sub_u32(32847u, func_1());
    var_0 = !(!(!(!all(vec3<bool>(true, false, true)))));
    let var_1 = 30236i;
    let var_2 = Struct_1(false, 28820u, vec4<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), func_2(u_input.b, Struct_2(u_input.c.x), vec2<u32>(global2[_wgslsmith_index_u32(105337u, 32u)] << (4294967295u % 32u), select(43396u, global2[_wgslsmith_index_u32(34473u, 32u)], false))), all(vec3<bool>(func_2(1u, Struct_2(var_1), vec2<u32>(28664u, global2[_wgslsmith_index_u32(0u, 32u)])), true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, false))))), u_input.c.zw);
    var var_3 = ~(select(vec3<u32>(u_input.b, min(global2[_wgslsmith_index_u32(var_2.b, 32u)], global2[_wgslsmith_index_u32(var_2.b, 32u)]), _wgslsmith_mult_u32(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.b, 32u)], 32u)])), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b), vec3<u32>(0u, u_input.b, u_input.a), vec3<u32>(1u, 0u, 4294967295u))), vec3<bool>(any(var_2.c.yxw), var_2.c.x && false, var_2.a)) | abs(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], 14178u, 86252u) | abs(vec3<u32>(4294967295u, 49661u, 25619u))));
    var var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~abs(select(vec3<u32>(var_3.x, u_input.b, 0u), vec3<u32>(53867u, u_input.b, var_3.x), var_2.c.wwz)), countOneBits(vec3<u32>(~258u, 0u, _wgslsmith_sub_u32(37947u, var_3.x)))), _wgslsmith_clamp_vec3_u32((select(vec3<u32>(51604u, u_input.b, 4294967295u), vec3<u32>(4746u, var_2.b, 0u), vec3<bool>(false, false, false)) | countOneBits(vec3<u32>(6895u, 53563u, global2[_wgslsmith_index_u32(4294967295u, 32u)]))) | firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1316u, var_3.x, var_3.x), vec3<u32>(4294967295u, 1u, 1u))), vec3<u32>(73342u, _wgslsmith_div_u32(min(global2[_wgslsmith_index_u32(var_2.b, 32u)], 1u), var_3.x), ~(4294967295u << (var_3.x % 32u))), countOneBits(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 27164u, 4294967295u) << (~vec3<u32>(4294967295u, u_input.b, var_3.x) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x);
}

