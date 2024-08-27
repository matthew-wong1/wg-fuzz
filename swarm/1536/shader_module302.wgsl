struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    global0 = vec4<i32>(-(~2147483647i), _wgslsmith_mod_i32(21267i, ~u_input.d.x), reverseBits(global0.x ^ (u_input.b.x | global0.x)), ~global0.x) >> ((vec4<u32>(7603u, 1u, _wgslsmith_add_u32(arg_0.x, arg_1) << (_wgslsmith_add_u32(u_input.c.x, 49961u) % 32u), 4294967295u) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_0 = Struct_2(Struct_1(u_input.c.zyz));
    let var_1 = Struct_3(vec4<bool>(true, any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), any(vec3<bool>(true, true, u_input.a.x <= 1u)), true));
    var_0 = Struct_2(Struct_1(select(u_input.c.xwz, vec3<u32>(1u, arg_0.x, 58557u), select(var_1.a.xxy, vec3<bool>(false, var_1.a.x, false), var_1.a.xxw)) >> (var_0.a.a % vec3<u32>(32u))));
    var var_2 = !vec3<bool>(var_1.a.x, true, var_1.a.x);
    return Struct_3(!var_1.a);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_3(select(vec4<bool>(_wgslsmith_clamp_i32(global0.x, -45240i, 2147483647i) > 5440i, select(true, select(false, false, true), true), firstTrailingBit(-2147483647i) > arg_1.x, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), true, true, var_0 <= _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -876f) > _wgslsmith_f_op_f32(max(-608f, arg_0)), true, select(all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, true, false)), true), all(vec3<bool>(true, true, true)))));
    let var_2 = abs(7718u);
    let var_3 = Struct_1(arg_3.a.a);
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-8479i, arg_1.x, min(14120i, 0i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1i, u_input.b.x, global0.x))), select(vec4<i32>(u_input.d.x, arg_1.x, 28796i, global0.x), ~vec4<i32>(17198i, arg_1.x, 2147483647i, global0.x), any(var_1.a))) >> (reverseBits(arg_2.a.a.x) % 32u), arg_1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, 1i, arg_1.x) | ~_wgslsmith_mult_vec3_i32(global0.ywx, u_input.b), ~abs(~u_input.b)), arg_1.x);
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 1i, -8457i, ~global0.x), ~vec4<i32>(0i, u_input.b.x, global0.x, arg_1.x) & ~vec4<i32>(1i, global0.x, global0.x, -48891i)), firstLeadingBit(firstTrailingBit(vec4<i32>(1i, global0.x, -2147483647i, -826i)))), -(~9356i));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(u_input.a, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, ~(u_input.c.x << (49281u % 32u))), u_input.a.x));
    global0 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(select(vec4<i32>(40066i, 444i, -20493i, 57938i), vec4<i32>(2147483647i, -4308i, global0.x, -7185i), vec4<bool>(true, var_0.a.x, false, true)), vec4<i32>(0i, 15751i, -40121i, global0.x))), vec4<i32>(_wgslsmith_add_i32(14389i, global0.x), ~global0.x, global0.x, 0i) | vec4<i32>(0i, ~1i, countOneBits(1i), u_input.d.x)), u_input.d.x, _wgslsmith_clamp_i32(11078i, u_input.b.x, global0.x), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(893f, -1278f))), select(u_input.b.yz, vec2<i32>(u_input.b.x, u_input.b.x), var_0.a.zz) >> (u_input.c.xy % vec2<u32>(32u)), Struct_2(Struct_1(vec3<u32>(16717u, u_input.c.x, 4294967295u))), Struct_2(Struct_1(u_input.c.xxy))) ^ u_input.b.x);
    var var_1 = ~(~abs(firstLeadingBit(firstLeadingBit(u_input.c))));
    global0 = ~_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(7163i, 1i), ~(-1i), ~global0.x), ~vec4<i32>(-2147483647i, 0i, -11761i, global0.x), any(select(var_0.a, var_0.a, var_0.a))), abs(-(vec4<i32>(global0.x, -26260i, u_input.b.x, global0.x) ^ vec4<i32>(1i, 50717i, u_input.b.x, global0.x))));
    var var_2 = Struct_1(~u_input.a.xww);
    return vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~select(var_2.a.zy, vec2<u32>(var_2.a.x, u_input.a.x), vec2<bool>(true, var_0.a.x))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4574u, 38570u, var_1.x), firstLeadingBit(u_input.c)), u_input.c.x)), 37757u, var_1.x, ~var_2.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    global0 = vec4<i32>(arg_1, ~3350i, 0i, _wgslsmith_clamp_i32(~_wgslsmith_div_i32(func_3(-1622f, global0.zx, Struct_2(Struct_1(vec3<u32>(u_input.c.x, u_input.a.x, 1u))), Struct_2(Struct_1(u_input.c.wwx))), abs(arg_2)), min(global0.x, ~33430i), 1i));
    global0 = vec4<i32>(max(func_3(_wgslsmith_f_op_f32(round(1000f)), reverseBits(global0.zw), Struct_2(Struct_1(vec3<u32>(arg_0.x, u_input.a.x, 4294967295u))), Struct_2(Struct_1(u_input.a.wxy))), firstLeadingBit(global0.x) & ~global0.x), ~arg_2, -arg_1, 72129i) | abs(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(14313i, 35395i, -54522i, u_input.b.x) << (vec4<u32>(u_input.a.x, 65973u, arg_0.x, 1u) % vec4<u32>(32u))), vec4<i32>(-40856i, ~global0.x, -1i, global0.x)));
    let var_0 = u_input.d.x;
    return Struct_2(Struct_1(_wgslsmith_add_vec3_u32(u_input.c.yyy, firstTrailingBit(arg_0.yyz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), _wgslsmith_clamp_i32(max(-global0.x ^ -24793i, i32(-1i) * -20960i), u_input.d.x ^ ~func_3(-1034f, u_input.b.xz, Struct_2(Struct_1(u_input.c.xyw)), Struct_2(Struct_1(u_input.a.wyz))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(1i, global0.x, -1i, -39708i) << (vec4<u32>(40603u, u_input.a.x, 4294967295u, u_input.c.x) % vec4<u32>(32u))), abs(firstTrailingBit(vec4<i32>(u_input.b.x, global0.x, 17977i, 2147483647i))))), _wgslsmith_mod_i32(-10803i, 2147483647i));
    var var_1 = vec2<bool>(any(vec3<bool>(!any(vec4<bool>(false, false, true, true)), true, true)), true);
    let var_2 = u_input.c;
    var var_3 = func_2(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(~reverseBits(var_2.x), 99650u, ~4294967295u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(var_0.a.a.x, u_input.c.x) << (firstTrailingBit(var_2.x) % 32u)), var_2.zy ^ ~var_0.a.a.xz));
    var_1 = var_3.a.yw;
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1187f, -571f, -1146f), vec3<f32>(-1000f, -336f, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-236f, 798f, 511f), vec3<f32>(1190f, -1000f, -886f), var_3.a.xwz)), !var_3.a.zyx)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1606f, -994f, -339f) - vec3<f32>(-1760f, -2025f, 1780f))))));
}

