struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<i32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), -4645i), Struct_2(vec4<u32>(0u, 1u, 1u, 1u), vec3<u32>(1u, 7374u, 4294967295u), vec2<i32>(1i, -36007i))), Struct_3(vec4<bool>(true, true, false, true), vec2<i32>(0i, -5677i), Struct_2(vec4<u32>(1u, 113808u, 4294967295u, 16135u), vec3<u32>(1u, 4294967295u, 5924u), vec2<i32>(-1i, 2147483647i))), Struct_3(vec4<bool>(true, true, true, false), vec2<i32>(-1i, -29565i), Struct_2(vec4<u32>(42649u, 1u, 13890u, 8905u), vec3<u32>(4294967295u, 78683u, 31472u), vec2<i32>(25078i, 7801i))), Struct_3(vec4<bool>(false, true, true, false), vec2<i32>(-1692i, -12673i), Struct_2(vec4<u32>(4294967295u, 0u, 18247u, 0u), vec3<u32>(4294967295u, 4294967295u, 7339u), vec2<i32>(1i, 1i))), Struct_3(vec4<bool>(false, false, false, true), vec2<i32>(23994i, -6647i), Struct_2(vec4<u32>(5482u, 17658u, 1u, 0u), vec3<u32>(0u, 52818u, 0u), vec2<i32>(2147483647i, -25621i))), Struct_3(vec4<bool>(false, true, false, false), vec2<i32>(9489i, 2147483647i), Struct_2(vec4<u32>(48037u, 1u, 1u, 49958u), vec3<u32>(54697u, 85673u, 1u), vec2<i32>(0i, 21982i))), Struct_3(vec4<bool>(false, true, true, false), vec2<i32>(21653i, i32(-2147483648)), Struct_2(vec4<u32>(40231u, 64773u, 37729u, 9u), vec3<u32>(0u, 0u, 27185u), vec2<i32>(2147483647i, 22661i))), Struct_3(vec4<bool>(false, true, true, false), vec2<i32>(-1i, 9723i), Struct_2(vec4<u32>(23591u, 102865u, 23581u, 13258u), vec3<u32>(45690u, 1u, 0u), vec2<i32>(2147483647i, 40107i))), Struct_3(vec4<bool>(false, true, true, true), vec2<i32>(25107i, 2147483647i), Struct_2(vec4<u32>(4294967295u, 22042u, 4294967295u, 1u), vec3<u32>(35785u, 5501u, 29772u), vec2<i32>(-1i, -87866i))), Struct_3(vec4<bool>(false, false, false, false), vec2<i32>(0i, 16211i), Struct_2(vec4<u32>(1u, 3888u, 42240u, 0u), vec3<u32>(76280u, 1u, 4294967295u), vec2<i32>(33141i, -1i))), Struct_3(vec4<bool>(false, true, false, false), vec2<i32>(-26372i, -11508i), Struct_2(vec4<u32>(79511u, 5939u, 4294967295u, 14641u), vec3<u32>(0u, 32358u, 1u), vec2<i32>(-5173i, i32(-2147483648)))), Struct_3(vec4<bool>(true, false, true, true), vec2<i32>(-2542i, -7892i), Struct_2(vec4<u32>(1u, 1u, 0u, 81515u), vec3<u32>(1u, 1u, 4511u), vec2<i32>(50496i, 1i))), Struct_3(vec4<bool>(false, false, true, true), vec2<i32>(-1i, -26850i), Struct_2(vec4<u32>(21198u, 1u, 0u, 0u), vec3<u32>(7201u, 4294967295u, 1u), vec2<i32>(-8119i, 18323i))), Struct_3(vec4<bool>(false, false, true, false), vec2<i32>(12783i, i32(-2147483648)), Struct_2(vec4<u32>(1u, 0u, 1u, 0u), vec3<u32>(0u, 42654u, 4294967295u), vec2<i32>(13717i, 1879i))), Struct_3(vec4<bool>(true, true, false, true), vec2<i32>(2147483647i, 1i), Struct_2(vec4<u32>(58517u, 62107u, 16411u, 0u), vec3<u32>(1u, 17037u, 4294967295u), vec2<i32>(i32(-2147483648), 24815i))), Struct_3(vec4<bool>(false, true, false, true), vec2<i32>(-1i, -22371i), Struct_2(vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<u32>(5905u, 1u, 49712u), vec2<i32>(1i, 39249i))), Struct_3(vec4<bool>(false, false, false, true), vec2<i32>(-1i, 0i), Struct_2(vec4<u32>(4294967295u, 33345u, 49705u, 0u), vec3<u32>(0u, 222u, 1u), vec2<i32>(-16829i, i32(-2147483648)))), Struct_3(vec4<bool>(false, false, true, true), vec2<i32>(1i, 38463i), Struct_2(vec4<u32>(12415u, 46349u, 51453u, 4294967295u), vec3<u32>(1u, 18527u, 23621u), vec2<i32>(-1i, 0i))), Struct_3(vec4<bool>(false, true, true, false), vec2<i32>(4644i, 0i), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 77390u), vec3<u32>(1u, 13624u, 44267u), vec2<i32>(-31267i, 1i))), Struct_3(vec4<bool>(true, true, true, false), vec2<i32>(12446i, 37735i), Struct_2(vec4<u32>(1u, 38175u, 18121u, 4294967295u), vec3<u32>(0u, 34697u, 4294967295u), vec2<i32>(5104i, 3526i))), Struct_3(vec4<bool>(true, true, false, false), vec2<i32>(-11660i, -63968i), Struct_2(vec4<u32>(1u, 6514u, 1u, 23312u), vec3<u32>(4294967295u, 4946u, 0u), vec2<i32>(0i, 0i))), Struct_3(vec4<bool>(true, true, true, false), vec2<i32>(-1i, 0i), Struct_2(vec4<u32>(4294967295u, 34456u, 0u, 1u), vec3<u32>(22969u, 28997u, 1u), vec2<i32>(1i, 14173i))), Struct_3(vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 6972u), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(-1i, i32(-2147483648)))), Struct_3(vec4<bool>(true, true, false, true), vec2<i32>(1095i, 13420i), Struct_2(vec4<u32>(0u, 0u, 48588u, 0u), vec3<u32>(35456u, 0u, 11927u), vec2<i32>(-31660i, -70503i))), Struct_3(vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, i32(-2147483648)), Struct_2(vec4<u32>(0u, 23873u, 48720u, 0u), vec3<u32>(0u, 58506u, 69755u), vec2<i32>(-1i, 22730i))), Struct_3(vec4<bool>(false, false, true, false), vec2<i32>(-4269i, 2147483647i), Struct_2(vec4<u32>(0u, 20057u, 19529u, 0u), vec3<u32>(0u, 15666u, 1u), vec2<i32>(-809i, 1i))), Struct_3(vec4<bool>(false, true, true, true), vec2<i32>(1i, -1i), Struct_2(vec4<u32>(1u, 0u, 1u, 1u), vec3<u32>(16949u, 4294967295u, 78618u), vec2<i32>(1i, 21983i))), Struct_3(vec4<bool>(false, false, false, false), vec2<i32>(-4685i, i32(-2147483648)), Struct_2(vec4<u32>(0u, 1u, 4143u, 4294967295u), vec3<u32>(8417u, 65894u, 31457u), vec2<i32>(-7679i, i32(-2147483648)))));

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 20>;

var<private> global3: bool = false;

var<private> global4: array<Struct_3, 1>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(Struct_1(vec2<bool>(firstTrailingBit(44097i) == (-2147483647i | u_input.c.x), true), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global1.x, global1.x, 23646u)), vec3<u32>(57174u, 90114u, global1.x) & vec3<u32>(92623u, 1u, global1.x)), 20u)], -(~_wgslsmith_mult_i32(u_input.a.x, 1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(-2951f)))));
    global0 = array<Struct_3, 28>();
    global4 = array<Struct_3, 1>();
    return var_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_2 {
    let var_0 = !(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(1513u, 1u, 1u, 72685u)), global1.x) > 0u);
    var var_1 = func_2();
    global4 = array<Struct_3, 1>();
    let var_2 = Struct_1(arg_0.zx, (true == global2[_wgslsmith_index_u32(reverseBits(global1.x ^ global1.x), 20u)]) && !(!(!var_0)), 18646i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(-697f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(585f, 510f)), 1666f))), var_1.b.x, 1051f);
    return Struct_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(0u, 72727u, global1.x), 34162u, 4294967295u, global1.x), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4923u, global1.x, global1.x, 18145u) | vec4<u32>(4294967295u, 36472u, 4294967295u, global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 89913u, 57741u), vec4<u32>(global1.x, 48850u, global1.x, 53639u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 49210u, global1.x, global1.x), vec4<u32>(0u, global1.x, global1.x, 0u), vec4<u32>(20491u, 4294967295u, global1.x, global1.x))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, global1.x, 1u) >> (vec4<u32>(global1.x, global1.x, global1.x, 7166u) % vec4<u32>(32u))), max(vec4<u32>(39319u, global1.x, 20153u, 21359u), ~vec4<u32>(global1.x, global1.x, 4294967295u, 9765u)), ~vec4<u32>(global1.x, global1.x, 11373u, global1.x))), select(vec3<u32>(abs(global1.x), global1.x, 24669u), vec3<u32>(29294u, firstLeadingBit(global1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 32717u), vec2<u32>(global1.x, 6124u))), any(vec4<bool>(false, false, arg_0.x, true))) ^ (~vec3<u32>(global1.x, 33093u, global1.x) | firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 12738u, global1.x), vec3<u32>(0u, global1.x, global1.x)))), select(vec2<i32>(var_2.c, 1i) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)), abs(max(u_input.c, u_input.c)), arg_0.yy) >> (select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(65374u, 27323u), vec2<u32>(global1.x, 4294967295u)), firstLeadingBit(~vec2<u32>(global1.x, 1u)), var_1.a.b) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = -1i;
    var_0 = arg_0.c.x;
    var var_1 = firstLeadingBit(max(vec2<u32>(global1.x, 129924u), countOneBits(vec2<u32>(_wgslsmith_clamp_u32(global1.x, 32853u, 500u), 4294967295u))));
    var var_2 = Struct_4(!(!select(select(vec3<bool>(arg_2.x, arg_2.x, true), arg_2, arg_2), arg_2, any(vec3<bool>(arg_1.a.b, arg_2.x, arg_2.x)))), Struct_3(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(6246u, 20u)], true, arg_2.x, true), vec4<bool>(arg_2.x, true, false, arg_2.x), vec4<bool>(false, global2[_wgslsmith_index_u32(52806u, 20u)], arg_1.a.b, global2[_wgslsmith_index_u32(0u, 20u)]))), vec2<i32>(-20234i, arg_1.a.c), Struct_2(~reverseBits(arg_0.a), _wgslsmith_sub_vec3_u32(~arg_0.a.ywy, arg_0.a.wxz), abs(select(u_input.a, vec2<i32>(0i, u_input.c.x), vec2<bool>(false, true))))), vec3<i32>(~(~arg_1.a.c >> (_wgslsmith_mult_u32(0u, 0u) % 32u)), arg_1.a.c, func_2().a.c), -_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a.c, -1i, 2147483647i, -45855i) ^ vec4<i32>(32928i, u_input.c.x, -23358i, 2147483647i)), select(vec4<i32>(-47880i, u_input.a.x, u_input.c.x, arg_0.c.x), vec4<i32>(0i, arg_0.c.x, 1i, arg_0.c.x), !arg_2.x)), Struct_2(~arg_0.a, vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(4294967295u, global1.x))), ~(~var_1.x), 1u), ~(-vec2<i32>(u_input.c.x, arg_1.a.c)) << (firstLeadingBit(arg_0.a.xz) % vec2<u32>(32u))));
    let var_3 = Struct_4(select(!(!(!var_2.b.a.yxw)), vec3<bool>(true, all(func_2().a.a), arg_0.c.x >= arg_1.a.c), select(vec3<bool>(!arg_1.a.b, false | arg_1.a.a.x, var_2.a.x), !vec3<bool>(false, false, arg_2.x), vec3<bool>(true, true, true))), global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(arg_0.a, firstLeadingBit(vec4<u32>(35732u, 57883u, 7435u, 81027u)))), 1u)], firstTrailingBit(-var_2.d.xyy), vec4<i32>(_wgslsmith_sub_i32(countOneBits(2147483647i), arg_1.a.c), _wgslsmith_sub_i32(~max(0i, 4147i), var_2.b.c.c.x), countOneBits(~arg_0.c.x), arg_0.c.x), arg_0);
    return var_2.e;
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = func_4(func_3(!vec4<bool>(true, any(vec2<bool>(true, arg_0)), true, true), func_2()), func_2(), vec3<bool>(select(-1i > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -8879i, u_input.b, u_input.c.x), vec4<i32>(u_input.a.x, 25072i, -29862i, -33963i)), false, true), true, all(func_2().a.a)));
    let var_1 = 0i;
    let var_2 = ~var_0.c.x;
    var var_3 = ~(~_wgslsmith_add_vec3_u32(var_0.b, select(var_0.a.zzx, countOneBits(vec3<u32>(50564u, var_0.b.x, 0u)), global2[_wgslsmith_index_u32(var_0.b.x, 20u)])));
    global2 = array<bool, 20>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2029f - 444f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1193f, _wgslsmith_f_op_f32(f32(-1f) * -636f))) * 1002f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1422f, -1319f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(global1.x, 20u)], true)))))), vec3<f32>(1702f, _wgslsmith_f_op_vec3_f32(func_1(all(vec3<bool>(true, false, false)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f + -600f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-751f)), 479f, 457f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1188f, 860f, -2561f), vec3<f32>(-497f, -404f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2255f, 1000f, 818f)), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1098u, 20u)]))))));
    var var_1 = Struct_1(!select(vec2<bool>(global1.x == global1.x, all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(101492u, 20u)], global2[_wgslsmith_index_u32(global1.x, 20u)], global2[_wgslsmith_index_u32(global1.x, 20u)]))), !(!vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 20u)], false)), global2[_wgslsmith_index_u32(0u, 20u)]), any(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x)), 20u)], global2[_wgslsmith_index_u32(0u ^ global1.x, 20u)], true), !vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(126809u, 20u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(39013u, 20u)], global2[_wgslsmith_index_u32(6305u, 20u)])))), firstTrailingBit(1i));
    global1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), abs(vec2<u32>(global1.x, global1.x))), ~countOneBits(vec2<u32>(0u, 105828u) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))), max(vec2<u32>(_wgslsmith_mod_u32(global1.x, global1.x), 56101u), ~vec2<u32>(65797u, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, ~global1.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 42643u), vec2<u32>(global1.x, global1.x)), ~vec2<u32>(global1.x, global1.x)))), -(~vec3<i32>(u_input.b, -u_input.b, ~u_input.a.x)), 0i, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -274f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, var_0.x, -858f, 677f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1000f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1769f, var_0.x, var_0.x)))));
}

