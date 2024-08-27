struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: array<vec2<u32>, 1>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 27> = array<bool, 27>(false, true, false, false, true, true, true, true, true, true, false, false, true, true, false, false, true, false, false, true, true, false, false, true, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = !select(!(!select(vec3<bool>(global2.a, true, global3[_wgslsmith_index_u32(41037u, 27u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(global2.c, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), true)), !vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], global2.a)), !global3[_wgslsmith_index_u32(4294967295u, 27u)], true), vec3<bool>(any(vec4<bool>(false, false, true, global2.a)), !global3[_wgslsmith_index_u32(global2.c, 27u)], all(vec4<bool>(true, global3[_wgslsmith_index_u32(global2.b, 27u)], false, true)) & global2.a));
    var var_1 = Struct_1(global2.a, ~(~0u) ^ _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(4294967295u, global2.c, 79109u)), ~vec3<u32>(arg_0.x, global2.c, 0u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_0.x, 52587u), ~_wgslsmith_mult_u32(0u, 58324u)), global2.c));
    let var_2 = !vec4<bool>(select(false, !global2.a, true | global2.a), var_0.x, var_0.x, !all(!vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 27u)], var_0.x)));
    var var_3 = -u_input.d.x;
    global2 = Struct_1(true, firstLeadingBit(firstTrailingBit(25824u)), u_input.b);
    return _wgslsmith_mod_i32(u_input.d.x, -(-u_input.c & ~0i)) & reverseBits(u_input.d.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(select(vec2<u32>(96049u, 11840u << ((global2.c << (arg_1.c % 32u)) % 32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(global2.b, 1u)], vec2<u32>(0u, 4294967295u)) << (~global1[_wgslsmith_index_u32(0u, 1u)] % vec2<u32>(32u)), ~vec2<u32>(37072u, 1u), global1[_wgslsmith_index_u32(4294967295u ^ ~global2.b, 1u)]), !vec2<bool>(true, 2147483647i <= u_input.d.x)));
    var var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(~u_input.d.x, -u_input.d.x, u_input.a.x)), _wgslsmith_sub_vec3_i32(u_input.a.zwy, u_input.a.zxw));
    let var_2 = ~vec4<i32>(~11816i, -40969i, ~4468i, countOneBits(_wgslsmith_clamp_i32(func_3(vec4<u32>(1u, var_0.x, u_input.b, global2.b)), u_input.c, min(2147483647i, 0i))));
    let var_3 = arg_0;
    var var_4 = vec3<u32>(abs(~50111u), abs(max(global2.c, global2.c)), 0u);
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global3 = array<bool, 27>();
    var var_0 = min(-arg_0, arg_0);
    let var_1 = !arg_2.b;
    global0 = array<vec4<f32>, 25>();
    global2 = Struct_1(global2.a, u_input.b, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(4294967295u, arg_3.a.b)));
    return arg_2.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    global2 = arg_0.a;
    let var_0 = Struct_2(func_4(u_input.c, true, Struct_2(Struct_1(!global3[_wgslsmith_index_u32(arg_0.a.c, 27u)], firstTrailingBit(global2.b), 10146u >> (arg_1 % 32u)), vec4<bool>(true, true, arg_0.a.a, global2.a)), Struct_2(func_2(Struct_2(arg_0.a, arg_0.b), Struct_1(arg_0.b.x, arg_0.a.c, arg_1)), !arg_0.b)), select(!(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(47877u, 27u)])), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)] || false, global2.a, arg_0.b.x, true != arg_0.b.x), vec4<bool>(true, global3[_wgslsmith_index_u32(max(1u, 1u), 27u)], true, global2.a), select(vec4<bool>(global3[_wgslsmith_index_u32(22365u, 27u)], arg_0.a.a, global3[_wgslsmith_index_u32(arg_1, 27u)], arg_0.b.x), arg_0.b, vec4<bool>(arg_0.a.a, true, global2.a, global3[_wgslsmith_index_u32(u_input.b, 27u)]))), select(select(arg_0.b, select(arg_0.b, vec4<bool>(arg_0.b.x, global2.a, global2.a, true), arg_0.b), !arg_0.b.x), vec4<bool>(arg_1 >= 0u, !global2.a, true, any(vec2<bool>(global2.a, global3[_wgslsmith_index_u32(u_input.b, 27u)]))), (global3[_wgslsmith_index_u32(global2.b, 27u)] & true) || !arg_0.a.a)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -140f);
    var var_2 = Struct_1(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mult_i32(-17746i, u_input.d.x)), 1i, -_wgslsmith_mult_i32(u_input.c, -52071i)) > u_input.a.x, _wgslsmith_clamp_u32(65521u, ~602u, ~40971u & arg_0.a.c), ~func_2(Struct_2(Struct_1(true, arg_1, var_0.a.b), !vec4<bool>(arg_0.b.x, var_0.a.a, arg_0.a.a, false)), func_4(u_input.a.x, true, Struct_2(Struct_1(arg_0.a.a, var_0.a.c, var_0.a.b), arg_0.b), var_0)).c);
    let var_3 = var_0;
    return select(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, global2.a, false), var_0.a.a))), !(!select(vec4<bool>(true, true, var_2.a, global2.a), !vec4<bool>(var_3.a.a, global2.a, false, var_0.a.a), vec4<bool>(arg_0.b.x, var_3.a.a, global2.a, var_3.b.x))), !select(arg_0.b, select(arg_0.b, select(var_3.b, var_3.b, vec4<bool>(var_2.a, false, false, false)), -2147483647i <= u_input.d.x), !(!var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_1 = select(vec4<bool>(all(!func_1(Struct_2(Struct_1(global2.a, global2.b, global2.b), vec4<bool>(false, global2.a, global3[_wgslsmith_index_u32(global2.b, 27u)], false)), 30211u)), true, !any(vec3<bool>(global3[_wgslsmith_index_u32(6591u, 27u)], global2.a, false)) | global2.a, true), func_1(Struct_2(func_4(~(-2147483647i), true, Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.b, 27u)], global2.c, 9025u), vec4<bool>(global2.a, true, global2.a, true)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 27u)], u_input.b, global2.b), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(u_input.b, 27u)], true, true))), select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(global2.c, 27u)], global3[_wgslsmith_index_u32(7804u, 27u)], global2.a), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global2.a, true), vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(0u, 27u)])), select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(u_input.b, 27u)], false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], false, true, global3[_wgslsmith_index_u32(global2.b, 27u)]), vec4<bool>(true, global2.a, false, global3[_wgslsmith_index_u32(u_input.b, 27u)])), global2.b < u_input.b)), 1u), true);
    global0 = array<vec4<f32>, 25>();
    var var_2 = Struct_2(func_4(0i, func_2(Struct_2(Struct_1(false, 55181u, global2.c), select(vec4<bool>(global2.a, global2.a, global3[_wgslsmith_index_u32(43455u, 27u)], true), vec4<bool>(false, global2.a, true, true), var_1)), func_2(Struct_2(Struct_1(var_1.x, 41267u, global2.c), vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(u_input.b, 27u)], var_1.x, true)), func_4(u_input.a.x, global2.a, Struct_2(Struct_1(false, global2.b, global2.c), var_1), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global2.b, 27u)], u_input.b, 8709u), vec4<bool>(var_1.x, global2.a, true, global3[_wgslsmith_index_u32(u_input.b, 27u)]))))).a, Struct_2(Struct_1(true, u_input.b, global2.c), var_1), Struct_2(Struct_1(true, ~global2.c, abs(u_input.b)), !func_1(Struct_2(Struct_1(var_1.x, 0u, 42748u), var_1), 0u))), select(vec4<bool>(reverseBits(u_input.b) <= countOneBits(global2.c), global2.a, any(vec2<bool>(global3[_wgslsmith_index_u32(54189u, 27u)], false)), true), select(!select(var_1, var_1, global3[_wgslsmith_index_u32(0u, 27u)]), var_1, any(var_1.ww) & global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.b, global2.b, 0u), 27u)]), true));
    let var_3 = firstLeadingBit(u_input.b);
    let var_4 = Struct_2(var_2.a, !(!(!(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 27u)], true)))));
    var var_5 = func_2(Struct_2(Struct_1(!all(vec3<bool>(global2.a, var_2.a.a, true)), ~var_3, firstTrailingBit(~116397u)), var_4.b), func_4(-21893i, true, Struct_2(func_4(u_input.a.x, select(var_4.a.a, var_1.x, true), var_4, var_4), vec4<bool>(func_1(var_4, u_input.b).x, var_1.x, false, true)), Struct_2(var_4.a, !var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wzw, reverseBits(-1i));
}

