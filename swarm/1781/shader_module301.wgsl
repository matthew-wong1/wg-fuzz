struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: Struct_2;

var<private> global1: Struct_4;

var<private> global2: f32 = 750f;

var<private> global3: array<Struct_4, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    global0 = Struct_2(global0.d, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, global0.b.x), ~(~vec3<u32>(global1.d.c.b.x, 4294967295u, global1.d.c.b.x))), arg_1.xy, abs(-40209i), firstTrailingBit(_wgslsmith_mult_i32(~(~(-65484i)), select(firstLeadingBit(-1i), ~25795i, global1.d.b.x))));
    global0 = global1.d.c;
    global0 = global1.d.c;
    var var_0 = global1.d.e.yx;
    var_0 = select(vec2<bool>(true, false), global1.d.e.zx, false);
    return Struct_2(-(~(-54596i)), u_input.a.zwz, arg_1.yx, global1.e, _wgslsmith_add_i32(-25374i, min(global1.c.x, global1.c.x)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = Struct_2(-global0.e, ~vec3<u32>(min(_wgslsmith_div_u32(4993u, 4294967295u), ~4294967295u), abs(_wgslsmith_clamp_u32(global1.d.c.b.x, global1.d.c.b.x, 127960u)), _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), func_2(1153f, vec4<i32>(0i, -56051i, global0.d, global1.e)).b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(global1.e, 7553i), global1.d.c.e), 2147483647i), _wgslsmith_mod_vec2_i32(func_2(-1870f, vec4<i32>(global1.d.c.c.x, 2147483647i, -1i, global1.e)).c ^ _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c.x, global0.c.x), global1.d.c.c), ~global0.c)), ~(~global0.e), abs(countOneBits(-26500i)));
    var var_0 = vec2<u32>(~firstTrailingBit(reverseBits(_wgslsmith_sub_u32(4294967295u, global0.b.x))), global0.b.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1125f, 1091f)), _wgslsmith_f_op_f32(f32(-1f) * -174f), any(global1.d.e))) + _wgslsmith_f_op_f32(-815f + _wgslsmith_f_op_f32(max(539f, 887f)))) * _wgslsmith_f_op_f32(abs(1000f))));
    global3 = array<Struct_4, 22>();
    let var_1 = global3[_wgslsmith_index_u32(~min(global1.d.c.b.x, ~select(var_0.x, u_input.a.x, global1.b)) | u_input.a.x, 22u)];
    return var_0.x;
}

fn func_1(arg_0: f32) -> vec3<bool> {
    var var_0 = func_2(arg_0, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global0.c.x, 1i, global1.d.c.a, global0.e), abs(vec4<i32>(global0.d, global1.e, 2147483647i, -1i))) << (_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1u, global0.b.x, 4294967295u)) % vec4<u32>(32u)), ~(vec4<i32>(-1i, 15022i, global0.e, global0.c.x) << (u_input.a % vec4<u32>(32u)))));
    global0 = Struct_2(abs(~global0.c.x), vec3<u32>(4294967295u, ~max(_wgslsmith_mult_u32(58000u, 39379u), 1u), func_3(true)), global1.d.c.c ^ ~(~vec2<i32>(global0.a, -19062i)), var_0.d, countOneBits(global0.c.x));
    return !select(global1.d.e, !vec3<bool>(all(vec3<bool>(global1.a.a, true, false)), true, global1.b), select(vec3<bool>(true, false, true), global1.d.b, !select(global1.d.b, global1.d.b, global1.d.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(global1.b), !(!(!func_1(452f))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1632f, 168f)) + _wgslsmith_f_op_f32(1652f + -263f))), vec4<i32>(_wgslsmith_div_i32(max(global0.e, 15279i), global1.e), -22646i, i32(-1i) * -global1.d.c.d, -24897i)), Struct_1(func_3(!global1.a.a) == global0.b.x), select(select(vec3<bool>(!global1.b, !global1.d.a.a, global1.a.a), !vec3<bool>(true, false, global1.d.d.a), vec3<bool>(true, false, global1.a.a)), vec3<bool>(!(global1.e >= global0.e), true, false), vec3<bool>((global1.b | true) | func_1(-1354f).x, !global1.b, select(all(global1.d.e.zz), select(global1.d.e.x, false, false), false == global1.a.a))));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(21803i));
}

