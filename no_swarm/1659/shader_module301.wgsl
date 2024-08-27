struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(1000f, 43195u), Struct_5(1124f, 4294967295u), Struct_5(521f, 4294967295u), Struct_5(1000f, 48432u), Struct_5(1000f, 4294967295u), Struct_5(-790f, 13140u), Struct_5(-2024f, 0u), Struct_5(455f, 23309u), Struct_5(1000f, 72304u), Struct_5(-1275f, 32146u), Struct_5(-454f, 0u));

var<private> global2: Struct_4 = Struct_4(true, Struct_2(-1245f, Struct_1(true, vec3<f32>(-1000f, -167f, 1000f))), Struct_2(-920f, Struct_1(true, vec3<f32>(605f, 885f, 1000f))));

var<private> global3: array<vec4<f32>, 8>;

var<private> global4: Struct_1 = Struct_1(true, vec3<f32>(1124f, -1000f, -1999f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global1 = array<Struct_5, 11>();
    let var_0 = vec4<u32>(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), ~24426u), 83835u, ~_wgslsmith_mult_u32(u_input.b, 0u)), ~max(~vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(0u, 0u, 1u))), abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, u_input.b)) ^ ~(u_input.b << (6252u % 32u))), _wgslsmith_clamp_u32(17735u, u_input.b, ~(~115663u)));
    let var_1 = _wgslsmith_mod_u32(reverseBits(var_0.x), firstTrailingBit(u_input.b ^ _wgslsmith_mult_u32(~0u, u_input.b)));
    global4 = global2.b.b;
    global0 = _wgslsmith_mult_i32(u_input.a.x, u_input.c.x);
    return ~_wgslsmith_mod_u32(~var_1, ~(~u_input.b)) > 87555u;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.a.x & 0i, 2147483647i, _wgslsmith_sub_i32(u_input.c.x, -50713i), -1i)), -(vec4<i32>(35126i << (u_input.b % 32u), 1i, 1i, _wgslsmith_add_i32(2147483647i, u_input.c.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(749u, u_input.b, u_input.b, u_input.b), select(vec4<u32>(u_input.b, 53329u, u_input.b, 9616u), vec4<u32>(u_input.b, u_input.b, u_input.b, 54542u), false)) % vec4<u32>(32u))));
    global2 = Struct_4(!func_3(), global2.b, Struct_2(259f, Struct_1(true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.b.b.x, -1223f, 770f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-397f, -404f, global2.c.b.b.x), vec3<f32>(-1599f, -1817f, 203f), vec3<bool>(global2.b.b.a, global4.a, true))))))));
    let var_1 = false;
    global2 = Struct_4(~u_input.b >= ~68768u, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global4.b.x)), -894f))), Struct_1(false, global4.b)), global2.b);
    let var_2 = global2.c;
    return global2.b;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = vec2<u32>(select(u_input.b, ~u_input.b, global2.a), 85593u);
    var var_1 = vec2<i32>(-_wgslsmith_div_i32(u_input.a.x, -_wgslsmith_div_i32(-2147483647i, u_input.c.x)), max(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c << (select(vec2<u32>(36643u, 0u), vec2<u32>(arg_0, 1u), global2.c.b.a) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.c.x), u_input.a.x))));
    let var_2 = func_2();
    let var_3 = global2.a;
    var_0 = firstTrailingBit(~(~(vec2<u32>(arg_0, var_0.x) | vec2<u32>(31730u, arg_0)) & vec2<u32>(0u, var_0.x)));
    return vec4<i32>(_wgslsmith_div_i32(abs(u_input.a.x), -var_1.x), min(~(-2147483647i), var_1.x), u_input.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, -25674i), var_1.x, abs(40523i), ~1i)), vec4<i32>(15790i, var_1.x, _wgslsmith_dot_vec3_i32(select(u_input.a, u_input.a, global2.c.b.a), -u_input.a), 0i)));
}

fn func_4(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = ~0u;
    var var_1 = u_input.a.x;
    global3 = array<vec4<f32>, 8>();
    let var_2 = countOneBits(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(32392u, 1u, var_0), vec3<u32>(u_input.b, 4294967295u, 4294967295u)) << (~vec3<u32>(39662u, u_input.b, u_input.b) % vec3<u32>(32u))), vec3<u32>(1u, u_input.b, u_input.b)));
    global1 = array<Struct_5, 11>();
    return Struct_4(false && global4.a, global2.c, Struct_2(global2.c.a, Struct_1(all(vec2<bool>(true, false)), global4.b)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>) -> StorageBuffer {
    global4 = Struct_1(!(true == all(!vec2<bool>(true, global2.c.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global2.b.b.b)) + global4.b));
    global1 = array<Struct_5, 11>();
    global3 = array<vec4<f32>, 8>();
    let var_0 = ~_wgslsmith_sub_u32(arg_1.x, ~firstTrailingBit(8664u) << (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(15188u, 1u)), arg_1) % 32u));
    var var_1 = select(select(vec4<bool>(func_2().b.a && any(vec3<bool>(true, arg_0.a, global2.a)), (39493u >> (var_0 % 32u)) > _wgslsmith_div_u32(25636u, var_0), !all(vec2<bool>(false, true)), !all(vec4<bool>(arg_0.b.b.a, true, false, true))), !vec4<bool>(false, true, true, true | arg_0.a), select(select(select(vec4<bool>(global2.c.b.a, arg_0.c.b.a, global2.b.b.a, global2.b.b.a), vec4<bool>(false, true, global2.a, arg_0.b.b.a), false), select(vec4<bool>(arg_0.b.b.a, true, true, false), vec4<bool>(true, global4.a, global2.c.b.a, false), vec4<bool>(global2.c.b.a, true, global2.b.b.a, global4.a)), true), select(select(vec4<bool>(false, true, arg_0.b.b.a, global2.a), vec4<bool>(false, true, global4.a, true), vec4<bool>(false, global4.a, true, arg_0.a)), !vec4<bool>(arg_0.a, true, false, true), arg_0.a), select(select(vec4<bool>(true, true, false, false), vec4<bool>(global4.a, true, global4.a, true), true), select(vec4<bool>(true, false, false, global4.a), vec4<bool>(false, global2.a, global2.a, global2.a), arg_0.a), !vec4<bool>(global2.c.b.a, global2.a, global2.b.b.a, false)))), select(vec4<bool>(arg_0.a, all(vec4<bool>(arg_0.b.b.a, true, true, global4.a)), func_3(), func_4(-vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -1i)).a), vec4<bool>(func_4(vec4<i32>(u_input.a.x, u_input.c.x, 0i, 26110i)).b.b.a, true, u_input.c.x >= _wgslsmith_mult_i32(-19115i, -25276i), global4.a), true), vec4<bool>((-1000f > _wgslsmith_div_f32(global4.b.x, global2.b.a)) | arg_0.a, select(all(!vec4<bool>(true, false, false, global4.a)), any(vec2<bool>(true, false)), any(select(vec4<bool>(global4.a, global2.c.b.a, global2.b.b.a, global2.a), vec4<bool>(arg_0.a, true, global4.a, global4.a), vec4<bool>(global2.b.b.a, arg_0.a, global4.a, global2.a)))), _wgslsmith_f_op_f32(266f - _wgslsmith_div_f32(global4.b.x, global4.b.x)) > _wgslsmith_div_f32(299f, _wgslsmith_f_op_f32(1606f - global4.b.x)), select(func_3(), any(vec4<bool>(global4.a, global2.b.b.a, global4.a, global2.c.b.a)), false) | func_4(select(vec4<i32>(u_input.a.x, -3518i, u_input.c.x, u_input.c.x), vec4<i32>(-1i, u_input.a.x, -2147483647i, 30285i), vec4<bool>(false, global2.b.b.a, global2.c.b.a, true))).a));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b.b.x, 238f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.c.b.b.zx)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, -1392f) * vec2<f32>(global2.b.a, -749f))))) - func_4(vec4<i32>(_wgslsmith_div_i32(u_input.c.x, -5667i), ~u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -3873i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a.x)))).c.b.b.zz), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(-1i), u_input.a.x, reverseBits(2523i), 4467i & u_input.a.x), vec4<i32>(53362i >> (arg_1.x % 32u), u_input.c.x, ~u_input.a.x, ~u_input.c.x))), select(min(countOneBits(8038i), 13358i), -2147483647i, arg_0.b.b.a) ^ u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, u_input.c.x, 31799i, u_input.c.x) ^ -vec4<i32>(-11448i, -14930i, 6556i, u_input.c.x), select(firstLeadingBit(vec4<i32>(-1i, -45172i, u_input.a.x, 1i)), func_1(var_0.b, global2.c.b.b), all(vec2<bool>(false, global4.a))))), select(((vec2<u32>(var_0.b, 4294967295u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(var_0.b, u_input.b)) % vec2<u32>(32u))) >> (min(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.b), vec2<u32>(var_0.b, var_0.b)), countOneBits(vec2<u32>(69242u, u_input.b))) % vec2<u32>(32u)), ~(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(var_0.b, u_input.b), false)), !select(vec2<bool>(false, global4.a), select(vec2<bool>(false, true), vec2<bool>(true, global2.c.b.a), global2.c.b.a), vec2<bool>(global2.a, global2.c.b.a))));
}

