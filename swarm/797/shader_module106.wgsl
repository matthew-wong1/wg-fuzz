struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<Struct_3, 27>;

var<private> global2: array<Struct_2, 24>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = abs(~max(vec3<i32>(u_input.d << (11121u % 32u), _wgslsmith_mult_i32(u_input.d, global3.a.x), ~(-32146i)), _wgslsmith_mult_vec3_i32(global3.a, max(global3.b, global3.b))));
    global3 = global2[_wgslsmith_index_u32(global3.d.x << (min(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~global0[_wgslsmith_index_u32(18913u, 4u)]), 4u)], 394u) % 32u), 24u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.d.x, _wgslsmith_mod_u32(~1u, global3.d.x), _wgslsmith_div_u32(global3.d.x, 991u)), 24u)];
    var var_2 = reverseBits(_wgslsmith_div_vec3_i32(~select(vec3<i32>(-1454i, global3.c, -26447i), global3.a, var_1.e), global3.a)) & var_1.b;
    var var_3 = -1787f;
    return select(select(vec3<bool>(true, false || (global3.e | false), arg_0.x), !vec3<bool>(true, any(vec4<bool>(false, false, global3.e, true)), true), false), !select(vec3<bool>(global3.e, select(false, false, arg_0.x), true), select(select(vec3<bool>(global3.e, false, arg_0.x), vec3<bool>(true, var_1.e, var_1.e), true), !vec3<bool>(false, true, arg_0.x), true), true), all(select(!arg_0, select(select(arg_0, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true)), arg_0, select(vec2<bool>(true, global3.e), vec2<bool>(true, var_1.e), global3.e)), !vec2<bool>(arg_0.x, true))));
}

fn func_2() -> bool {
    var var_0 = !(!func_3(!select(vec2<bool>(global3.e, true), vec2<bool>(false, global3.e), vec2<bool>(false, global3.e))));
    var var_1 = select(vec2<bool>(false, var_0.x), select(func_3(select(vec2<bool>(true, true), !vec2<bool>(true, var_0.x), var_0.zy)).zx, !func_3(!var_0.xx).yz, select(vec2<bool>(true, global3.e), var_0.xz, vec2<bool>(true, var_0.x))), var_0.zz);
    var var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 27u)];
    global1 = array<Struct_3, 27>();
    var_1 = select(var_0.zz, select(var_0.xy, select(func_3(var_0.xz).yx, vec2<bool>(1u >= global0[_wgslsmith_index_u32(u_input.c.x, 4u)], true), all(!vec3<bool>(var_2.e.e, var_0.x, var_2.b))), select(var_0.yz, var_0.xx, global3.e)), var_2.d);
    return select(var_1.x, true | !(!global3.e), !(11494i <= ~u_input.d));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global3 = Struct_2(vec3<i32>(-(~(-2147483647i)), u_input.d, 0i), vec3<i32>(max(26047i, 13538i), 32297i, _wgslsmith_add_i32(-1i, -1i | u_input.d)), -2147483647i, (~countOneBits(vec2<u32>(u_input.b, u_input.b)) & global3.d) << (vec2<u32>(~1u, max(u_input.a.x, 4294967295u)) % vec2<u32>(32u)), func_2() | true);
    let var_0 = !select(!(!select(vec4<bool>(true, global3.e, global3.e, false), vec4<bool>(global3.e, true, global3.e, true), arg_0)), select(vec4<bool>(true && arg_0, true, arg_0, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, global3.e, global3.e)), false, func_2(), true)), global3.e);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(907f)), _wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -406f))));
    return Struct_2(-_wgslsmith_mod_vec3_i32(~global3.b << (_wgslsmith_mult_vec3_u32(u_input.a.zxx, u_input.a.xxz) % vec3<u32>(32u)), vec3<i32>(countOneBits(u_input.d), 1i, u_input.d | -1i)), abs(vec3<i32>(global3.c, 1i, min(u_input.d, global3.a.x))) | select(_wgslsmith_add_vec3_i32(global3.a, global3.a), ~reverseBits(global3.a), any(vec3<bool>(true, true, arg_0))), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(1i), 2147483647i | u_input.d), reverseBits(select(-1i, -4680i, true))), global3.c ^ u_input.d), global3.d, 1i == (~(u_input.d ^ global3.b.x) << (u_input.b % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 4>();
    global1 = array<Struct_3, 27>();
    let var_0 = firstTrailingBit(~firstLeadingBit(~u_input.a));
    global3 = func_1(true);
    let var_1 = Struct_2(~global3.b & firstLeadingBit(firstLeadingBit(~global3.b)), vec3<i32>(func_1(true).a.x, ~global3.a.x, u_input.d), (_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, u_input.d, u_input.d), abs(vec3<i32>(u_input.d, u_input.d, global3.c))) >> (0u % 32u)) | _wgslsmith_sub_i32(u_input.d, firstTrailingBit(-3379i)), global3.d, global3.e);
    global3 = func_1(!(true && any(vec3<bool>(true, var_1.e, true))));
    let var_2 = vec4<i32>(-var_1.c, global3.b.x, _wgslsmith_mult_i32(~(-1i), u_input.d), ~global3.c);
    global0 = array<u32, 4>();
    var var_3 = !(!func_3(vec2<bool>(true, !global3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, reverseBits(countOneBits(~vec2<u32>(4294967295u, 39087u))), ~_wgslsmith_add_u32(1u, 33047u));
}

